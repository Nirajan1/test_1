import 'package:flutter/material.dart';
import 'package:flutter_test_1/controller/product_controller.dart';
import 'package:flutter_test_1/widgets/listitem.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    var pController = Get.find<ProductController>();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Ecommerce"),
          centerTitle: true,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart))
          ],
        ),
        body: Obx(
          () {
            if (pController.isLoading.value == true) {
              return const Center(child: CircularProgressIndicator.adaptive());
            } else {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      width: Get.size.width,
                      height: 214,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: pController.products.length,
                        itemBuilder: (context, index) => Container(
                          width: 180,
                          height: 120,
                          margin: const EdgeInsets.all(7),
                          child: MyCustomeListCard(
                            product: pController.products[index],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }
}