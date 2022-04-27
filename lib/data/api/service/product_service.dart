import 'package:chopper/chopper.dart';
import 'package:fakestore/data/api/model/product_dto.dart';
import 'package:fakestore/data/api/service/product_api.dart';
import 'package:fakestore/data/mapper/product_mapper.dart';

class ProductService {
  final chopper = ChopperClient(
    baseUrl: 'https://fakestoreapi.com',
    services: [
      ProductApi.create(),
    ],
  );

  Future<List<ProductDTO>> getProducts() async {
    final productService = chopper.getService<ProductApi>();

    final response = await productService.getProducts();

    return ProductMapper.fromApi(response.body);
  }
}
