import 'package:fakestore/data/api/service/product_service.dart';
import 'package:fakestore/data/mapper/product_mapper.dart';
import 'package:fakestore/domain/model/product_model.dart';

class ApiUtil {
  final ProductService productService;

  ApiUtil({
    required this.productService,
  });

  Future<List<Product>> getProducts() async {
    final data = await productService.getProducts();
    return ProductMapper.fromDTO(data);
  }
}
