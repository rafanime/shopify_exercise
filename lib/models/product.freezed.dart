// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
class _$ProductTearOff {
  const _$ProductTearOff();

  _Product call(
      {int? id,
      String? title,
      String? product_type,
      String? tags,
      List<Variant>? variants}) {
    return _Product(
      id: id,
      title: title,
      product_type: product_type,
      tags: tags,
      variants: variants,
    );
  }

  Product fromJson(Map<String, Object?> json) {
    return Product.fromJson(json);
  }
}

/// @nodoc
const $Product = _$ProductTearOff();

/// @nodoc
mixin _$Product {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get product_type => throw _privateConstructorUsedError;
  String? get tags => throw _privateConstructorUsedError;
  List<Variant>? get variants => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? title,
      String? product_type,
      String? tags,
      List<Variant>? variants});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res> implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  final Product _value;
  // ignore: unused_field
  final $Res Function(Product) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? product_type = freezed,
    Object? tags = freezed,
    Object? variants = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      product_type: product_type == freezed
          ? _value.product_type
          : product_type // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String?,
      variants: variants == freezed
          ? _value.variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<Variant>?,
    ));
  }
}

/// @nodoc
abstract class _$ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$ProductCopyWith(_Product value, $Res Function(_Product) then) =
      __$ProductCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? title,
      String? product_type,
      String? tags,
      List<Variant>? variants});
}

/// @nodoc
class __$ProductCopyWithImpl<$Res> extends _$ProductCopyWithImpl<$Res>
    implements _$ProductCopyWith<$Res> {
  __$ProductCopyWithImpl(_Product _value, $Res Function(_Product) _then)
      : super(_value, (v) => _then(v as _Product));

  @override
  _Product get _value => super._value as _Product;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? product_type = freezed,
    Object? tags = freezed,
    Object? variants = freezed,
  }) {
    return _then(_Product(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      product_type: product_type == freezed
          ? _value.product_type
          : product_type // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String?,
      variants: variants == freezed
          ? _value.variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<Variant>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Product extends _Product {
  const _$_Product(
      {this.id, this.title, this.product_type, this.tags, this.variants})
      : super._();

  factory _$_Product.fromJson(Map<String, dynamic> json) =>
      _$$_ProductFromJson(json);

  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? product_type;
  @override
  final String? tags;
  @override
  final List<Variant>? variants;

  @override
  String toString() {
    return 'Product(id: $id, title: $title, product_type: $product_type, tags: $tags, variants: $variants)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Product &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.product_type, product_type) &&
            const DeepCollectionEquality().equals(other.tags, tags) &&
            const DeepCollectionEquality().equals(other.variants, variants));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(product_type),
      const DeepCollectionEquality().hash(tags),
      const DeepCollectionEquality().hash(variants));

  @JsonKey(ignore: true)
  @override
  _$ProductCopyWith<_Product> get copyWith =>
      __$ProductCopyWithImpl<_Product>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductToJson(this);
  }
}

abstract class _Product extends Product {
  const factory _Product(
      {int? id,
      String? title,
      String? product_type,
      String? tags,
      List<Variant>? variants}) = _$_Product;
  const _Product._() : super._();

  factory _Product.fromJson(Map<String, dynamic> json) = _$_Product.fromJson;

  @override
  int? get id;
  @override
  String? get title;
  @override
  String? get product_type;
  @override
  String? get tags;
  @override
  List<Variant>? get variants;
  @override
  @JsonKey(ignore: true)
  _$ProductCopyWith<_Product> get copyWith =>
      throw _privateConstructorUsedError;
}

Variant _$VariantFromJson(Map<String, dynamic> json) {
  return _Variant.fromJson(json);
}

/// @nodoc
class _$VariantTearOff {
  const _$VariantTearOff();

  _Variant call({int? id, String? title, int? inventory_quantity}) {
    return _Variant(
      id: id,
      title: title,
      inventory_quantity: inventory_quantity,
    );
  }

  Variant fromJson(Map<String, Object?> json) {
    return Variant.fromJson(json);
  }
}

/// @nodoc
const $Variant = _$VariantTearOff();

/// @nodoc
mixin _$Variant {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  int? get inventory_quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VariantCopyWith<Variant> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VariantCopyWith<$Res> {
  factory $VariantCopyWith(Variant value, $Res Function(Variant) then) =
      _$VariantCopyWithImpl<$Res>;
  $Res call({int? id, String? title, int? inventory_quantity});
}

/// @nodoc
class _$VariantCopyWithImpl<$Res> implements $VariantCopyWith<$Res> {
  _$VariantCopyWithImpl(this._value, this._then);

  final Variant _value;
  // ignore: unused_field
  final $Res Function(Variant) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? inventory_quantity = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      inventory_quantity: inventory_quantity == freezed
          ? _value.inventory_quantity
          : inventory_quantity // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$VariantCopyWith<$Res> implements $VariantCopyWith<$Res> {
  factory _$VariantCopyWith(_Variant value, $Res Function(_Variant) then) =
      __$VariantCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String? title, int? inventory_quantity});
}

/// @nodoc
class __$VariantCopyWithImpl<$Res> extends _$VariantCopyWithImpl<$Res>
    implements _$VariantCopyWith<$Res> {
  __$VariantCopyWithImpl(_Variant _value, $Res Function(_Variant) _then)
      : super(_value, (v) => _then(v as _Variant));

  @override
  _Variant get _value => super._value as _Variant;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? inventory_quantity = freezed,
  }) {
    return _then(_Variant(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      inventory_quantity: inventory_quantity == freezed
          ? _value.inventory_quantity
          : inventory_quantity // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Variant extends _Variant {
  const _$_Variant({this.id, this.title, this.inventory_quantity}) : super._();

  factory _$_Variant.fromJson(Map<String, dynamic> json) =>
      _$$_VariantFromJson(json);

  @override
  final int? id;
  @override
  final String? title;
  @override
  final int? inventory_quantity;

  @override
  String toString() {
    return 'Variant(id: $id, title: $title, inventory_quantity: $inventory_quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Variant &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.inventory_quantity, inventory_quantity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(inventory_quantity));

  @JsonKey(ignore: true)
  @override
  _$VariantCopyWith<_Variant> get copyWith =>
      __$VariantCopyWithImpl<_Variant>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VariantToJson(this);
  }
}

abstract class _Variant extends Variant {
  const factory _Variant({int? id, String? title, int? inventory_quantity}) =
      _$_Variant;
  const _Variant._() : super._();

  factory _Variant.fromJson(Map<String, dynamic> json) = _$_Variant.fromJson;

  @override
  int? get id;
  @override
  String? get title;
  @override
  int? get inventory_quantity;
  @override
  @JsonKey(ignore: true)
  _$VariantCopyWith<_Variant> get copyWith =>
      throw _privateConstructorUsedError;
}
