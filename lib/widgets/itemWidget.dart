import 'package:flutter/material.dart';

import 'package:flutter_application_1/models/catalog.dart';

class itemWidget extends StatelessWidget {
  final Item item;

  const itemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "\$${item.price}",
          textScaleFactor: 1.2,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
