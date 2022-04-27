import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'product_dto.freezed.dart';
part 'product_dto.g.dart';

@freezed
class ProductDTO with _$ProductDTO {
  const factory ProductDTO({
    required int id,
    required String title,
    required double price,
    required String description,
    required String category,
    required String image,
    required Map<String, double> rating,
  }) = _ProductDTO;

  factory ProductDTO.fromJson(Map<String, Object?> json) =>
      _$ProductDTOFromJson(json);
}
