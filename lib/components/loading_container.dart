import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class LoadingContainer extends StatelessWidget {
  final double height;
  final double width;
  final double top_margin;

   LoadingContainer({required this.height, required this.width, required this.top_margin});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        child: Container(
          margin: EdgeInsets.only(top:top_margin),
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.background,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        baseColor: Theme.of(context).colorScheme.background,
        highlightColor: Theme.of(context).colorScheme.primaryContainer);
  }
}
