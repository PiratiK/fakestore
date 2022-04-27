import 'package:fakestore/domain/model/product_model.dart';
import 'package:fakestore/presentation/pages/home/components/card_image.dart';
import 'package:fakestore/presentation/pages/home/components/card_price.dart';
import 'package:fakestore/presentation/pages/home/components/card_rating.dart';
import 'package:fakestore/presentation/pages/home/components/card_title.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeCard extends StatelessWidget {
  final Product product;
  const HomeCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
            child: VStack([
      HStack([
        CardPrice(
          price: product.price,
        ),
        CardImage(imagePath: product.image),
      ]),
      CardRating(
        category: product.category,
        rate: product.rate,
        votes: product.votes,
      ),
      CardTitle(
        title: product.title,
        description: product.description,
      ),
    ]).p12())
        .makeCentered();
  }
}
