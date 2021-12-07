import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify/models/product.dart';
import 'package:shopify/repositories/product_repository.dart';

part 'products_state.dart';
part 'products_cubit.freezed.dart';

class ProductsCubit extends Cubit<ProductsState> {
  final ProductRepository productRepository;

  final List<Product> products;
  ProductsCubit({
    required this.productRepository,
    required this.products,
  }) : super(
          const ProductsState.initial(),
        ) {
    _loadImages();
  }

  _loadImages() async {
    emit(const ProductsState.loading());

    final productData = await productRepository.getProductImages(products);

    emit(ProductsState.loaded(products: productData));
  }
}
