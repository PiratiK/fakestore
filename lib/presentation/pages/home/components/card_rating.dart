import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CardRating extends StatelessWidget {
  final String category;
  final double rate;
  final double votes;
  const CardRating({
    Key? key,
    this.category = '',
    this.rate = 0.0,
    this.votes = 0.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HStack([
      VxBox(
        child: category.text.lightBlue500.size(14.0).bold.make(),
      ).width(context.percentWidth * 65.0).makeCentered(),
      VxCircle(
        child: '$rate'.text.white.bold.makeCentered(),
        backgroundColor: Colors.black,
        radius: 40.0,
      ).p12(),
      VxContinuousRectangle(
        child: '$votes'.text.white.bold.makeCentered(),
        backgroundColor: Colors.grey,
        width: 45.0,
        height: 25.0,
      )
    ]);
  }
}
