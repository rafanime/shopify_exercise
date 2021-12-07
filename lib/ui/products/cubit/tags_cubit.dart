import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify/models/product.dart';
import 'package:shopify/repositories/product_repository.dart';

part 'tags_state.dart';
part 'tags_cubit.freezed.dart';

class TagsCubit extends Cubit<TagsState> {
  final ProductRepository productRepository;
  TagsCubit({
    required this.productRepository,
  }) : super(
          const TagsState.initial(),
        ) {
    _loadProducts();
  }

  _loadProducts() async {
    emit(const TagsState.loading());

    final products = await productRepository.getProducts();

    final Map<String, List<Product>> tags = {};

    for (var product in products) {
      product.tags!.split(', ').forEach((tag) {
        tags.putIfAbsent(tag, () => []);

        tags[tag]!.add(product);
      });
    }

    emit(TagsState.loaded(products: products, tags: tags));
  }
}
