import 'package:custom_api/model/item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemTile extends StatelessWidget {

  late final Item item;
  ItemTile(this.item);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(12.0),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
               item.name.toString(),
              maxLines: 2,
              style:
              TextStyle( fontWeight: FontWeight.w800),
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(
              height: 10,
            ),

           /* Text(
              " ${item.address![0].houseNo} , ${item.address![0].city.toString()}",
              maxLines: 2,
              style:
              const TextStyle( fontWeight: FontWeight.w800),
              overflow: TextOverflow.ellipsis,
            ),*/
            SizedBox(
              height: 100,
              child: ListView.builder(
                      itemCount: item.address!.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: Padding(
                            padding: EdgeInsets.all(0.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Text(item.address![index].houseNo.toString()),
                                Text(item.address![index].city.toString()),



                              ],
                            ),
                          ),
                        );
                        // return Text(index.toString());
                      }),
            )


           /* //Another Way
            Text(
              " ${item.address!.first.houseNo} , ${item.address!.first.city.toString()}",
              maxLines: 2,
              style:
              const TextStyle( fontWeight: FontWeight.w800),
              overflow: TextOverflow.ellipsis,
            ),*/




          ],
        ),
      ),
    );
  }
}
