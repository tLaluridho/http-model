import 'package:flutter/material.dart';
import 'package:http_model/core.dart';
import '../view/product_form_view.dart';

class ProductFormController extends State<ProductFormView> {
  static late ProductFormController instance;
  late ProductFormView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
