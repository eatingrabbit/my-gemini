import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product with _$Product {

  const factory Product({
    @JsonKey(includeToJson: false) required int id,
    @JsonKey(name: 'title') required String name,
    required int price,
    required List<String> images,
  }) = _Product;

  const Product._();

  factory Product.empty() {
    return Product(
      id: 0,
      name: '샘플 상품',
      price: 1000,
      images: [],
    );
  }

  factory Product.fromJson(Map<String, Object?> json) =>
    _$ProductFromJson(json);
}