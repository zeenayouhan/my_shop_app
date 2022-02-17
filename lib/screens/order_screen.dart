import 'package:flutter/material.dart';
import 'package:my_shop_app/providers/orders.dart';
import 'package:my_shop_app/widgets/app_drawer.dart';
import '../widgets/order_item.dart' as oi;
import 'package:provider/provider.dart';

class OrderScreen extends StatelessWidget {
  static const routeName = '/orders';
  @override
  Widget build(BuildContext context) {
    final ordersData = Provider.of<Orders>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Orders"),
      ),
      drawer: AppDrawer(),
      body: ListView.builder(
        itemBuilder: (ctx, i) => oi.OrderItem(ordersData.orders[i]),
        itemCount: ordersData.orders.length,
      ),
    );
  }
}
