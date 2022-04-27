import 'package:fakestore/domain/model/product_model.dart';

abstract class ProductRepository {
  Future<List<Product>> getProducts();
}
