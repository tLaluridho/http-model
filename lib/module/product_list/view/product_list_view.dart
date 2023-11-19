import 'package:flutter/material.dart';
import 'package:http_model/core.dart';
import 'package:http_model/model/product.dart';
import '../controller/product_list_controller.dart';

class ProductListView extends StatefulWidget {
  const ProductListView({Key? key}) : super(key: key);

  Widget build(context, ProductListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ProductList"),
        actions: [
          IconButton(
            onPressed: () => controller.addProduct(),
            icon: const Icon(
              Icons.add,
              size: 24.0,
            ),
          ),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: controller.products.length,
        physics: const ScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          var item = controller.products[index];
          var product = Product.fromJson(item);
          return Card(
            child: ListTile(
              title: Text(product.productName ?? "-"),
              subtitle: Text(product.price.toString()),
              onTap: () => controller.deleteProduct(item["id"]),
            ),
          );
        },
      ),
    );
  }

  @override
  State<ProductListView> createState() => ProductListController();
}
