import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CenteredNetworkImage extends StatelessWidget {
  const CenteredNetworkImage({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        placeholder: (_, __) => const CircularProgressIndicator(),
        errorWidget: (_, __, ___) => const Icon(Icons.error),
      ),
    );
  }
}
