import 'package:fakestore/domain/model/product_model.dart';
import 'package:fakestore/domain/repository/product_repository.dart';
import 'package:mobx/mobx.dart';

part 'product_state.g.dart';

class ProductState = ProductStateBase with _$ProductState;

abstract class ProductStateBase with Store {
  final ProductRepository _productRepository;

  ProductStateBase(this._productRepository);

  @action
  Future<List<Product>> getProducts() async {
    return await _productRepository.getProducts();
  }
}
