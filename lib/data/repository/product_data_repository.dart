import 'package:fakestore/data/api/api_util.dart';
import 'package:fakestore/domain/model/product_model.dart';
import 'package:fakestore/domain/repository/product_repository.dart';

class ProductDataRepository extends ProductRepository {
  final ApiUtil _apiUtil;

  ProductDataRepository(this._apiUtil);

  @override
  Future<List<Product>> getProducts() async {
    return await _apiUtil.getProducts();
  }
}
