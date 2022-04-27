import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CardPrice extends StatelessWidget {
  final double price;
  const CardPrice({Key? key, this.price = 0.0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: VStack(
        [
          'from'.toUpperCase().text.size(16.0).bold.black.makeCentered(),
          '\$$price'.text.size(16.0).black.makeCentered(),
          VxCircle(
            child: const Icon(
              Icons.shopping_basket_outlined,
              color: Colors.white,
            ),
            radius: 65.0,
            backgroundColor: Colors.black,
          ).centered()
        ],
        alignment: MainAxisAlignment.spaceBetween,
      ),
    ).width(context.percentWidth * 25.0).height(120.0).makeCentered();
  }
}
