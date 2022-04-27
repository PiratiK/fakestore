import 'package:chopper/chopper.dart';

part 'product_api.chopper.dart';

@ChopperApi(baseUrl: '/')
abstract class ProductApi extends ChopperService {
  static ProductApi create([ChopperClient? client]) => _$ProductApi(client);

  @Get(path: "products/")
  Future<Response> getProducts();
}
