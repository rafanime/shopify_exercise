import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopify/models/product.dart';
import 'package:shopify/repositories/product_repository.dart';
import 'package:shopify/ui/products/cubit/products_cubit.dart';
import 'package:shopify/ui/products/cubit/tags_cubit.dart';
import 'package:shopify/ui/products/products_page.dart';
import 'package:shopify/ui/products/tags_page.dart';

class Routes {
  static Route generateRoute(RouteSettings settings) {
    final name = settings.name;

    MaterialPageRoute route(Widget widget) {
      return MaterialPageRoute(
        builder: (context) => widget,
        settings: settings,
      );
    }

    if (name == TagsPage.routeName) {
      return route(
        BlocProvider(
          create: (context) => TagsCubit(
            productRepository: RepositoryProvider.of<ProductRepository>(context),
          ),
          child: const TagsPage(),
        ),
      );
    }

    if (name == ProductsPage.routeName) {
      List<Product> products = settings.arguments as List<Product>;

      return route(
        BlocProvider(
          create: (context) => ProductsCubit(
            products: products,
            productRepository: RepositoryProvider.of<ProductRepository>(context),
          ),
          child: const ProductsPage(),
        ),
      );
    }

    return route(_errorRoute(settings));
  }

  static Widget _errorRoute(RouteSettings settings) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Not found'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text('Route doesn\'t exist'),
            Text('${settings.name}'),
            Text('${settings.arguments}'),
          ],
        ),
      ),
    );
  }
}
