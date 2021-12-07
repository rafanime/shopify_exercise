import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopify/repositories/product_repository.dart';
import 'package:shopify/routes.dart';
import 'package:shopify/ui/products/products_page.dart';
import 'package:shopify/ui/products/tags_page.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey();

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => ProductRepository(
            dio: Dio(),
          ),
        ),
      ],
      child: MaterialApp(
        title: "Rafanime Shopify",
        navigatorKey: navigatorKey,
        onGenerateRoute: Routes.generateRoute,
        initialRoute: TagsPage.routeName,
      ),
    );
  }
}
