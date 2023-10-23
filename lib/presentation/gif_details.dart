import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../core/extensions.dart';
import '../domain/gif_object.dart';
import 'widgets/centered_network_image.dart';
import 'widgets/gif_author.dart';

class GifDetails extends StatelessWidget {
  const GifDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final GifObject gifObject =
        ModalRoute.of(context)!.settings.arguments as GifObject;
    final imageInfo = gifObject.originalImage;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Gif's details"),
          backgroundColor: context.theme.colorScheme.inversePrimary,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                gifObject.title,
                style: context.theme.textTheme.bodyMedium,
              ),
              Expanded(
                child: CenteredNetworkImage(imageUrl: imageInfo.url),
              ),
              Text(
                '${imageInfo.width}x${imageInfo.height}, ${imageInfo.size} b.',
              ),
              GifAuthor(authorName: gifObject.userName),
            ],
          ),
        ),
      ),
    );
  }
}
