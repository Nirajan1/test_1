import 'package:flutter/material.dart';
import 'package:flutter_test_1/model/product_modetl.dart';

class MyCustomeListCard extends StatelessWidget {
  final ProductModel product;
  const MyCustomeListCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          SizedBox(
            width: 180,
            height: 120,
            child: Image.network(
              product.image!,
              fit: BoxFit.cover,
            ),
          ),
          ListTile(
            title: FittedBox(child: Text(product.title!)),
            subtitle: Text("${product.price}"),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
            ),
          ),
        ],
      ),
    );
  }
}
