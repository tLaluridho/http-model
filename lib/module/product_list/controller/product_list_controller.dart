import 'dart:math';

import 'package:flutter/material.dart';
import 'package:http_model/core.dart';
import 'package:http_model/service/product_service/product_service.dart';
import '../view/product_list_view.dart';

class ProductListController extends State<ProductListView> {
  static late ProductListController instance;
  late ProductListView view;

  @override
  void initState() {
    instance = this;
    getProduct();
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List products = [];
  getProduct() async {
    products = await ProductService().getProducts();
    setState(() {});
  }

  addProduct() async {
    await ProductService().addProduct(
      productname: "product ${Random().nextInt(1000)}",
      price: Random().nextDouble(),
    );
    await getProduct();
  }

  deleteProduct(int id) async {
    await ProductService().deleteProduct(id);
    await getProduct();
  }
}
