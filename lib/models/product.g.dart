// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Product _$$_ProductFromJson(Map<String, dynamic> json) => _$_Product(
      id: json['id'] as int?,
      title: json['title'] as String?,
      product_type: json['product_type'] as String?,
      tags: json['tags'] as String?,
      variants: (json['variants'] as List<dynamic>?)
          ?.map((e) => Variant.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ProductToJson(_$_Product instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'product_type': instance.product_type,
      'tags': instance.tags,
      'variants': instance.variants?.map((e) => e.toJson()).toList(),
    };

_$_Variant _$$_VariantFromJson(Map<String, dynamic> json) => _$_Variant(
      id: json['id'] as int?,
      title: json['title'] as String?,
      inventory_quantity: json['inventory_quantity'] as int?,
    );

Map<String, dynamic> _$$_VariantToJson(_$_Variant instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'inventory_quantity': instance.inventory_quantity,
    };
