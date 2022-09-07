import "package:flutter/material.dart";
import 'dart:io' show Platform;

class ModalSheet extends StatefulWidget {
  final Function addFunction;

  ModalSheet(this.addFunction);
  @override
  State<ModalSheet> createState() => _ModalSheetState();
}

class _ModalSheetState extends State<ModalSheet> {
  final idController = TextEditingController();
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();
  final imageController = TextEditingController();
  final priceController = TextEditingController();

  void skickatbx() {
    final id = idController.text;
    final title = titleController.text;
    final descrip = descriptionController.text;
    final image = imageController.text;
    final priceText = priceController.text;
    final price = double.parse(priceText);

    widget.addFunction(id, title, descrip, price, image);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Platform.isAndroid ? Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          TextField(
              decoration: InputDecoration(
                label: Text("Id"),
              ),
              controller: idController),
          Padding(
            padding: EdgeInsets.only(bottom: 10),
          ),
          TextField(
            decoration: InputDecoration(
              label: Text("Title"),
            ),
            controller: titleController,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10),
          ),
          TextField(
            decoration: InputDecoration(
              label: Text("Description"),
            ),
            controller: descriptionController,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10),
          ),
          TextField(
            decoration: InputDecoration(
              label: Text("Price"),
            ),
            controller: priceController,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10),
          ),
          TextField(
            decoration: InputDecoration(
              label: Text("Image Url"),
            ),
            controller: imageController,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10),
          ),
          ElevatedButton(
            onPressed: skickatbx,
            child: Text("Bekräfta"),
          )
        ],
      ),
    ) : Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
           Padding(
            padding: EdgeInsets.only(bottom: 100),
          ),

          TextField(
              decoration: InputDecoration(
                label: Text("Id"),
              ),
              controller: idController),
          Padding(
            padding: EdgeInsets.only(bottom: 10),
          ),
          TextField(
            decoration: InputDecoration(
              label: Text("Title"),
            ),
            controller: titleController,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10),
          ),
          TextField(
            decoration: InputDecoration(
              label: Text("Description"),
            ),
            controller: descriptionController,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10),
          ),
          TextField(
            decoration: InputDecoration(
              label: Text("Price"),
            ),
            controller: priceController,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10),
          ),
          TextField(
            decoration: InputDecoration(
              label: Text("Image Url"),
            ),
            controller: imageController,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10),
          ),
          ElevatedButton(
            onPressed: skickatbx,
            child: Text("Bekräfta"),
          )
        ],
      ),
    );
  }
}