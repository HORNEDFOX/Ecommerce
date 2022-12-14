import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testecommerce/bloc/repository/best_seller_repository.dart';
import 'package:testecommerce/pages/navigation_widget.dart';
import 'package:testecommerce/theme/light_theme.dart';

import 'bloc/repository/basket_repository.dart';
import 'bloc/repository/home_store_repository.dart';
import 'bloc/repository/product_repository.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => BestSellerRepository(),
      child: RepositoryProvider(
        create: (context) => HomeStoreRepository(),
        child: RepositoryProvider(
          create: (context) => ProductRepository(),
          child: RepositoryProvider(
            create: (context) => BasketRepository(),
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
              theme: LightTheme.lightTheme,
              home: const NavigationWidget(),
            ),
          ),
        ),
      ),
    );
  }
}
