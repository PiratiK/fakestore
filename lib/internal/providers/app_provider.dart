import 'package:fakestore/domain/state/product/product_state.dart';
import 'package:fakestore/internal/dependencies/modules/product_module.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppProvider extends StatelessWidget {
  final Widget child;
  const AppProvider({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: <Provider>[
        Provider<ProductState>(
          create: (context) => ProductModule.productState(),
        )
      ],
      builder: (context, _) {
        return child;
      },
    );
  }
}
