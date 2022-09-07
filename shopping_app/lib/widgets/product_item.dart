import "package:flutter/material.dart";
import 'package:flutter/cupertino.dart'; 
import 'dart:io';


class ProductItem extends StatelessWidget {
  final String? id;
  final String? title;
  final String? imageUrl;

  ProductItem({this.id, this.title, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return  Platform.isAndroid ? GridTile(
      child: Image.network(
        imageUrl as String,
        fit: BoxFit.cover,
      ),
      footer: GridTileBar(
        leading: IconButton(icon: Icon(Icons.favorite), onPressed: () {}),
        trailing: IconButton(
          icon: Icon(Icons.shopping_cart),
          onPressed: () {},
        ),
        backgroundColor: Colors.black54,
        title: Text(
          title as String,
          textAlign: TextAlign.center,
        ),
      ),
    ) : 
    GridTile(

      child: Image.network(

        imageUrl as String,
        fit: BoxFit.cover,
      ),
      footer: GridTileBar(
        leading: Material(child: IconButton(icon: Icon(Icons.favorite), onPressed: () {})),
        trailing: Material (
          child: IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
        ),
        backgroundColor: Colors.black54,
        title: Text(
          title as String,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}