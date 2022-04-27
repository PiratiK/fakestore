import 'dart:convert';

import 'package:fakestore/data/api/model/product_dto.dart';
import 'package:fakestore/domain/model/product_model.dart';

class ProductMapper {
  static Future<List<ProductDTO>> fromApi(String data) async {
    final List<ProductDTO> products = [];
    List<dynamic> productList = json.decode(data);
    for (var element in productList) {
      products.add(ProductDTO.fromJson(element));
    }
    return products;
  }

  static Future<List<Product>> fromDTO(List<ProductDTO> list) async {
    List<Product> products = [];
    for (var e in list) {
      products.add(Product(
        id: e.id,
        title: e.title,
        price: e.price,
        description: e.description,
        category: e.category,
        image: e.image,
        rate: e.rating['rate'] ?? 0.0,
        votes: e.rating['count'] ?? 0.0,
      ));
    }
    return products;
  }
}
