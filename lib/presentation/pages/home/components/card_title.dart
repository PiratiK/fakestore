import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CardTitle extends StatelessWidget {
  final String title;
  final String description;
  const CardTitle({
    Key? key,
    this.title = '',
    this.description = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VStack([
      title.text.size(24.0).black.bold.make().py8(),
      description.text.size(16.0).black.make(),
      const Divider(
        color: Colors.black,
        thickness: 1.0,
      ),
    ]);
  }
}
