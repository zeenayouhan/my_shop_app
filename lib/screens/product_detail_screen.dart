import 'package:flutter/material.dart';
import 'package:my_shop_app/providers/product.dart';
import 'package:my_shop_app/providers/products.dart';
import 'package:provider/provider.dart';

class PruductDetailScreen extends StatelessWidget {
  // final String title;
  // final double price;
  // PruductDetailScreen(this.title, this.price);
  static const routeName = "/product-detail";

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as String;
    final loadedProducts =
        Provider.of<Products>(context, listen: false).findById(productId);

    return Scaffold(
      appBar: AppBar(
        title: Text(loadedProducts.title),
      ),
    );
  }
}
