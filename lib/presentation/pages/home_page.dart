import 'package:fakestore/domain/model/product_model.dart';
import 'package:fakestore/domain/state/product/product_state.dart';
import 'package:fakestore/presentation/pages/home/home_card.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:provider/provider.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ProductState productState = context.watch<ProductState>();
    return Scaffold(
      backgroundColor: Colors.white,
      body: FutureBuilder<List<Product>>(
        future: productState.getProducts(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return HomeCard(product: snapshot.data![index]);
              },
            );
          }
          return VxBox(
            child: const CircularProgressIndicator(),
          ).makeCentered();
        },
      ),
    );
  }
}
