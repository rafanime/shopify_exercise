import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
abstract class Product implements _$Product {
  const Product._();
  const factory Product({
    int? id,
    String? title,
    String? product_type,
    String? tags,
    List<Variant>? variants,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
}

@freezed
abstract class Variant implements _$Variant {
  const Variant._();
  const factory Variant({
    int? id,
    String? title,
    int? inventory_quantity,
  }) = _Variant;

  factory Variant.fromJson(Map<String, dynamic> json) => _$VariantFromJson(json);

  static const basicGraphQLModel = '''
    id    
    name
  ''';
}
