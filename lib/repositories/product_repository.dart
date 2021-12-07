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
}
