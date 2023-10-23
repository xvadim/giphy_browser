import 'package:flutter/material.dart';

import '../../core/extensions.dart';

class GifAuthor extends StatelessWidget {
  const GifAuthor({super.key, this.authorName});

  final String? authorName;

  @override
  Widget build(BuildContext context) {
    final userName =
        authorName != null && authorName!.isNotEmpty ? authorName : null;
    return Text(
      userName != null ? 'by $userName' : '',
      style: context.theme.textTheme.bodySmall
          ?.copyWith(fontStyle: FontStyle.italic),
    );
  }
}
