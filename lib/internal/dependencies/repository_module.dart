import 'package:fakestore/data/repository/product_data_repository.dart';
import 'package:fakestore/domain/repository/product_repository.dart';
import 'package:fakestore/internal/dependencies/api_module.dart';

class RepositoryModule {
  static ProductRepository? _productRepository;

  static ProductRepository productRepository() {
    _productRepository ??= ProductDataRepository(ApiModule.apiUtil());
    return _productRepository!;
  }
}
