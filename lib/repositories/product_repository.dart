import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:shopify/models/product.dart';

class ProductRepository {
  ProductRepository({
    required this.dio,
  });

  final Dio dio;

  Future<List<Product>> getProducts() async {
    try {
      final result = await dio.get(
        'https://shopicruit.myshopify.com/admin/products.json',
        queryParameters: {
          'access_token': 'c32313df0d0ef512ca64d5b336a0d7c6',
        },
      );

      final productsData = result.data['products'] as List;

      return productsData.map((product) => Product.fromJson(product)).toList();
    } catch (e) {
      throw ErrorDescription('TODO: Error fetching Products');
    }
  }

  Future<Map<Product, String>> getProductImages(List<Product> products) async {
    try {
      final results = await Future.wait(
        products
            .map(
              (product) => dio.get(
                'https://shopicruit.myshopify.com/admin/api/2021-10/products/${product.id}/images.json',
                queryParameters: {
                  'access_token': 'c32313df0d0ef512ca64d5b336a0d7c6',
                },
              ),
            )
            .toList(),
      );

      List<String> images = [];

      for (var result in results) {
        final data = result.data['images'] as List;

        images.add(data.first['src']);
      }
      final Map<Product, String> imageData = {};

      for (var i = 0; i < products.length; i++) {
        imageData.putIfAbsent(products[i], () => images[i]);
      }

      return imageData;
    } catch (e) {
      throw ErrorDescription('TODO: Error fetching Product Images');
    }
  }
}
