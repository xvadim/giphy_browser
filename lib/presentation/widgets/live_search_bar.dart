import 'dart:async';

import 'package:flutter/material.dart';

import '../../core/extensions.dart';

typedef OnSearchFunction = void Function(String query);

class LiveSearchBar extends StatefulWidget {
  const LiveSearchBar({super.key, required this.onSearch});

  final OnSearchFunction onSearch;

  @override
  State<LiveSearchBar> createState() => _LiveSearchBarState();
}

class _LiveSearchBarState extends State<LiveSearchBar> {
  final _textController = TextEditingController();
  final FocusNode _searchFocus = FocusNode();
  Timer? _liveTimer;

  @override
  void initState() {
    super.initState();

    _textController.addListener(() {
      if (_textController.text.isNotEmpty) {
        _liveTimer ??=
            Timer(const Duration(milliseconds: _liveSearchDelay), () {
          if (_textController.text.isNotEmpty) {
            _startSearch(stopMode: false);
          }
        });
      }
    });
  }

  @override
  void dispose() {
    _liveTimer?.cancel();
    _textController.dispose();
    _searchFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Type to search',
              hintStyle: context.theme.textTheme.labelSmall?.copyWith(
                height: 1,
                color: Colors.grey,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            controller: _textController,
            focusNode: _searchFocus,
            onSubmitted: (_) => _startSearch(),
          ),
        ),
        IconButton(
          onPressed: _startSearch,
          icon: const Icon(Icons.search),
        ),
      ],
    );
  }

  void _startSearch({bool stopMode = true}) {
    _liveTimer?.cancel();
    _liveTimer = null;

    if (stopMode) {
      _searchFocus.unfocus();
    }

    widget.onSearch(_textController.text);
  }

  static const int _liveSearchDelay = 500; // in ms
}
