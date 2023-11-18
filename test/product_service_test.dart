import 'package:http_model/service/product_service/product_service.dart';

void main() async {
  final productservice = ProductService();
  final products = await productservice.getProducts();
  print(products);
}
