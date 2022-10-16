
import 'dart:convert';

import 'package:custom_api/model/item.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class ItemController extends GetxController{
  RxList itemList = [].obs;
  RxList viewList = [].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    // readJson();
    ReadJsonData();
    super.onInit();
  }
  Future<List<Item>> ReadJsonData() async {
    try {
      isLoading(true);
      final jsondata = await rootBundle.loadString('json/item.json');

      var products = itemFromJson(jsondata);
      if (products != null) {
        itemList.value = products;

      }
      for (int i = 0; i < itemList.value.length; i++) {

          viewList.add(itemList.elementAt(i));


        }

      final list = json.decode(jsondata) as List<dynamic>;
      return list.map((e) =>  Item.fromJson(e)).toList();



      }finally {
      isLoading(false);
    }



  }
}