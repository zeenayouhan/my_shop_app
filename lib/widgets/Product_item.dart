import 'package:flutter/material.dart';
import 'package:my_shop_app/providers/product.dart';
import 'package:my_shop_app/screens/product_detail_screen.dart';
import 'package:provider/provider.dart';

class ProductItem extends StatelessWidget {
  // final String id;
  // final String title;
  // final String imageUrl;

  // ProductItem(this.id, this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    final dataItems = Provider.of<Product>(context);
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(PruductDetailScreen.routeName,
                arguments: dataItems.id);
          },
          child: Image.network(
            dataItems.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black45,
          leading: IconButton(
            icon: Icon(
                dataItems.isFavourite ? Icons.favorite : Icons.favorite_border),
            color: Theme.of(context).accentColor,
            onPressed: () {
              dataItems.toggleFavouriteStatus();
            },
          ),
          title: Text(
            dataItems.title,
            textAlign: TextAlign.center,
          ),
          trailing: IconButton(
              onPressed: () {},
              color: Theme.of(context).accentColor,
              icon: Icon(Icons.shopping_cart)),
        ),
      ),
    );
  }
}
