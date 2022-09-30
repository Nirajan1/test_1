
import 'package:flutter_application_1/controller/product_controlle.dart';
import 'package:get/get.dart';

class MyBingidng extends Bindings {
  @override
  void dependencies() {
    Get.put(ProductController());
  }
}