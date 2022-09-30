import 'package:flutter_application_1/model/product_modetl.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class RemoteServise {
  static const client = http.Client;
  //method
  static Future<List<ProductModel>?> fetchProducts() async {
    try {
      var response =
          await http.get(Uri.parse("https://fakestoreapi.com/products"));
      if (response.statusCode == 200) {
        var jsonString = response.body;
        return productModelFromJson(jsonString);
      }
    } catch (error) {
      Get.snackbar("error", error.toString());
    }
    return null;
  }
}
