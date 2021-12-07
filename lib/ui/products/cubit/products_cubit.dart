import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify/models/product.dart';
import 'package:shopify/repositories/product_repository.dart';

part 'products_state.dart';
part 'products_cubit.freezed.dart';

class ProductsCubit extends Cubit<ProductsState> {
  final ProductRepository productRepository;
  ProductsCubit({
    required this.productRepository,
  }) : super(
          const ProductsState.initial(),
        ) {
    _loadProducts();
  }

  _loadProducts() async {
    emit(const ProductsState.loading());

    final products = await productRepository.getProducts();

    final Map<String, List<Product>> tags = {};

    for (var product in products) {
      product.tags!.split(', ').forEach((tag) {
        tags.putIfAbsent(tag, () => []);

        tags[tag]!.add(product);
      });
    }
    emit(ProductsState.loaded(products: products, tags: tags));
  }
}
