import 'package:fakestore/domain/state/product/product_state.dart';
import 'package:fakestore/internal/dependencies/repository_module.dart';

class ProductModule {
  static ProductState productState() {
    return ProductState(RepositoryModule.productRepository());
  }
}
