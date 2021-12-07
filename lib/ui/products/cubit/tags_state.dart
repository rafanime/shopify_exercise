part of 'tags_cubit.dart';

@freezed
class TagsState with _$TagsState {
  const factory TagsState.initial() = _Initial;
  const factory TagsState.loading() = _Loading;
  const factory TagsState.loaded({
    required List<Product> products,
    required Map<String, List<Product>> tags,
  }) = _Loaded;
}
