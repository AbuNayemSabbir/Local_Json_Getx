
import 'package:custom_api/model/item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

import '../controller/controller.dart';
import 'item_view.dart';

class HomePage extends StatelessWidget {
  final ItemController itemController = Get.put(ItemController());

   HomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        if (itemController.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        } else {
          return StaggeredGridView.countBuilder(
            crossAxisCount: 2,
            itemCount: itemController.itemList.length,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            itemBuilder: (context, index) {

            return ItemTile(itemController.itemList[index]);
            },
            staggeredTileBuilder: (index) => const StaggeredTile.fit(1),
          );
        }
      }),
    );
  }
}
