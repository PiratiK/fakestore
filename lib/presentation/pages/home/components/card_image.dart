import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CardImage extends StatelessWidget {
  final String imagePath;
  const CardImage({
    Key? key,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Image.network(
      imagePath,
      fit: BoxFit.cover,
    )).width(context.percentWidth * 65.0).makeCentered();
  }
}
