import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CachedImage extends StatelessWidget {
  final String imageUrl;
  final BoxFit fit;
  final double height;
  final Color color;

  const CachedImage({super.key, required this.imageUrl, this.color = const Color.fromARGB(0, 255, 255, 255), this.fit = BoxFit.cover, this.height = double.maxFinite});
  @override
  Widget build(BuildContext context) {
    return imageUrl.isEmpty
        ? Image.asset("assets/images/[APP LOGO HERE]")
        : ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: CachedNetworkImage(
              imageUrl: imageUrl,
              fit: BoxFit.contain,
              // color: color,
              placeholder: placeholder,
              placeholderFadeInDuration: const Duration(seconds: 1),
              errorWidget: (context, url, error) {
                return Image.asset("assets/images/[APP LOGO HERE]");
              },
            ),
          );
  }
}

Widget placeholder(BuildContext context, String url) {
  return Shimmer.fromColors(
    enabled: true,
    loop: 90,
    period: const Duration(seconds: 1),
    highlightColor: const Color.fromARGB(255, 195, 195, 195),
    baseColor: const Color.fromARGB(255, 208, 208, 208),
    child: Container(
      width: double.maxFinite,
      color: const Color.fromARGB(255, 203, 201, 218),
    ),
  );
}
