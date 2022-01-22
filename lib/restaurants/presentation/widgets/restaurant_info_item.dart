import 'package:flutter/material.dart';
import 'package:tyba_test/restaurants/data/model/response_model.dart';

class RestaurantInfoItemWidget extends StatelessWidget {
  final Result item;

  const RestaurantInfoItemWidget({required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5, left: 10, right: 10, top: 5),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration:
            BoxDecoration(border: Border.all(width: 1, color: Colors.blue)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(item.name),
            Text("Dirección: " + item.formattedAddress),
            Text("Rating: " + item.rating.toString()),
            Text("Estado: " + item.businessStatus),
          ],
        ),
      ),
    );
  }
}
