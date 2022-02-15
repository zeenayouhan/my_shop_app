import 'package:flutter/material.dart';

class PruductDetailScreen extends StatelessWidget {
  // final String title;
  // final double price;
  // PruductDetailScreen(this.title, this.price);
  static const routeName = "/product-detail";

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context).settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
    );
  }
}
