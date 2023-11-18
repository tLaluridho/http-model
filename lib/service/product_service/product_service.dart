import 'package:dio/dio.dart';

class ProductService {
  Future<List> getProducts() async {
    var response = await Dio().get(
      "https://capekngoding.com/demo/api/products",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    Map obj = response.data;
    return obj["data"];
  }

  addProduct({
    required String productname,
    required double price,
  }) async {
    await Dio().post(
      "https://capekngoding.com/demo/api/products",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
      data: {
        "product_name": productname,
        "price": price,
      },
    );
  }

  updateProduct({
    required int id,
    required String productname,
    required double price,
  }) async {
    await Dio().put(
      "https://capekngoding.com/demo/api/products/$id",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
      data: {
        "product_name": productname,
        "price": price,
      },
    );
  }

  deleteProduct(int id) async {
    await Dio().delete(
      "https://capekngoding.com/demo/api/products/$id",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
  }
}
