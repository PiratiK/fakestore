import 'package:fakestore/data/api/api_util.dart';
import 'package:fakestore/data/api/service/product_service.dart';

class ApiModule {
  static ApiUtil? _apiUtil;
  static ApiUtil apiUtil() {
    _apiUtil ??= ApiUtil(productService: ProductService());
    return _apiUtil!;
  }
}
