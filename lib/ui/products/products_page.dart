import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopify/models/product.dart';
import 'package:shopify/ui/products/cubit/products_cubit.dart';

class ProductsPage extends StatelessWidget {
  static String routeName = "ProductsPage";

  const ProductsPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(title: const Text('Products List Page')),
          body: state.maybeWhen(
            orElse: () => Center(child: CircularProgressIndicator()),
            loaded: (products) {
              return SingleChildScrollView(
                child: Column(
                    children: products.keys
                        .map((product) => _listTile(product, products[product]!))
                        .toList()),
              );
            },
          ),
        );
      },
    );
  }

  Widget _listTile(Product product, String image) {
    return ListTile(
        leading: Image.network(image),
        title: Text(product.title!),
        subtitle: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: product.variants!
                .map(
                  (e) => Padding(
                    padding: const EdgeInsets.only(right: 16.0, top: 16.0, bottom: 16.0),
                    child: Text('${e.title} ${e.inventory_quantity}'),
                  ),
                )
                .toList(),
          ),
        ));
  }
}
