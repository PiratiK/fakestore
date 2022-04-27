import 'package:fakestore/internal/providers/app_provider.dart';
import 'package:fakestore/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppProvider(
        child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fake Store',
      routes: {
        '/': (context) => const HomePage(),
      },
    ));
  }
}
