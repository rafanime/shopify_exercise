import 'package:flutter/material.dart';
import 'package:shopify/models/product.dart';

class ProductsPage extends StatelessWidget {
  static String routeName = "ProductsPage";
  final List<Product> products;

  const ProductsPage({
    Key? key,
    required this.products,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Products List Page')),
      body: SingleChildScrollView(
        child: Column(
          children: products.map((product) => _listTile(product)).toList(),
        ),
      ),
    );
  }

  Widget _listTile(Product product) {
    return ListTile(
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
