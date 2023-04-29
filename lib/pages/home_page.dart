import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/widgets/itemWidget.dart';
import 'package:flutter_application_1/widgets/myDrawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Saman Khareed"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: ListView.builder(
            itemCount: CatalogModel.items.length,
            itemBuilder: (context, index) {
              return itemWidget(item: CatalogModel.items[index]);
            },
          ),
        ),
        drawer: MyDrawer());
  }
}
