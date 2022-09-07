import 'dart:io' show Platform;
import "package:flutter/material.dart";
import 'package:shopping_app/screens/modal_sheet.dart';
import 'package:shopping_app/widgets/product_item.dart';
import "../models/product.dart";
import 'package:flutter/cupertino.dart'; 

class ProductsOverviewScreenIOS extends StatefulWidget {
  const ProductsOverviewScreenIOS({Key? key}) : super(key: key);

  @override
  State<ProductsOverviewScreenIOS> createState() => _ProductsOverviewScreenIOSState();
}

class _ProductsOverviewScreenIOSState extends State<ProductsOverviewScreenIOS> {
  final List<Product> loadedProducts = [
    Product(
      id: 'p1',
      title: 'Red Shirt',
      description: 'A red shirt - it is pretty red!',
      price: 29.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
    ),
    Product(
      id: 'p2',
      title: 'Trousers',
      description: 'A nice pair of trousers.',
      price: 59.99,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Trousers%2C_dress_%28AM_1960.022-8%29.jpg/512px-Trousers%2C_dress_%28AM_1960.022-8%29.jpg',
    ),
    Product(
      id: 'p3',
      title: 'Yellow Scarf',
      description: 'Warm and cozy - exactly what you need for the winter.',
      price: 19.99,
      imageUrl:
          'https://live.staticflickr.com/4043/4438260868_cc79b3369d_z.jpg',
    ),
    Product(
      id: 'p4',
      title: 'A Pan',
      description: 'Prepare any meal you want.',
      price: 49.99,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Cast-Iron-Pan.jpg/1024px-Cast-Iron-Pan.jpg',
    ),
  ];

  
  void addNew(BuildContext context) {

    showModalBottomSheet<dynamic>(
isScrollControlled: true,
context: context,
builder: (BuildContext bc) {
  return GestureDetector(child: ModalSheet(addTx));
 }
)
    ;
  }

  void addTx(String id, String title, String description, double price,
      String imageurl) {
    final newRecipe = Product(
        description: description,
        title: title,
        id: id,
        price: price,
        imageUrl: imageurl);

    setState(() {
      loadedProducts.add(newRecipe);
    });
  }

  @override
  Widget build(BuildContext context) {
    return  CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("Min Shop"),
        
        trailing:  CupertinoButton(
  child:Text("New"),
   padding: EdgeInsets.all(10),
  onPressed: () => addNew(context),
)
      ),
       
    child:  
    Padding(
      padding: const EdgeInsets.only(top: 100.0),
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3 / 3,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          itemBuilder: (context, i) => ProductItem(
              id: loadedProducts[i].id,
              title: loadedProducts[i].title,
              imageUrl: loadedProducts[i].imageUrl),
          itemCount: loadedProducts.length,
          padding: const EdgeInsets.all(20.0),
        ),
    ),
      
    );
  }
}