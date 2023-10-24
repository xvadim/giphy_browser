import 'package:flutter/material.dart';

import '../../core/extensions.dart';
import '../../domain/gif_object.dart';
import 'centered_network_image.dart';
import 'gif_author.dart';

class GifCard extends StatelessWidget {
  const GifCard({super.key, required this.gifObject});

  final GifObject gifObject;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // It's enough for our goals.
      // In big apps with complex navigation Navigator 2.0 should be used
      // or packages like auto_route or go_router
      onTap: () => Navigator.of(context).pushNamed(
        '/details',
        arguments: gifObject,
      ),
      child: Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: const BorderRadius.all(Radius.circular(4)),
        ),
        child: Column(
          children: [
            Expanded(
              child: CenteredNetworkImage(imageUrl: gifObject.thumbnail.url),
            ),
            Text(
              gifObject.title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: context.theme.textTheme.bodyMedium,
            ),
            GifAuthor(authorName: gifObject.userName),
          ],
        ),
      ),
    );
  }
}
