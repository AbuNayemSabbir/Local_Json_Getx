import 'package:custom_api/controller/controller.dart';
import 'package:custom_api/model/item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemTile extends StatelessWidget {

  late final Item item;
  ItemTile(this.item);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              item.name,
              maxLines: 2,
              style:
              TextStyle( fontWeight: FontWeight.w800),
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              item.address,
              maxLines: 2,
              style:
              TextStyle( fontWeight: FontWeight.w800),
              overflow: TextOverflow.ellipsis,
            ),



          ],
        ),
      ),
    );
  }
}
