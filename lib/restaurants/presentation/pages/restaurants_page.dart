import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tyba_test/restaurants/presentation/controller/restaurants_controller.dart';
import 'package:tyba_test/restaurants/presentation/widgets/restaurant_info_item.dart';

class RestaurantsPage extends StatelessWidget {
  final RestaurantsController controller = Get.put(RestaurantsController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Busca tu restaurante"),
        automaticallyImplyLeading: false,
        actions: [
          InkWell(
            child: const Padding(
              padding: EdgeInsets.only(right: 15),
              child: Icon(Icons.logout),
            ),
            onTap: () {
              controller.logOut();
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              TextFormField(
                controller: controller.ciudadController,
                decoration: InputDecoration(
                    hintText: "Ingresa la ciudad",
                    suffix: InkWell(
                      onTap: () {
                        controller.getRetauranst();
                      },
                      child: const Icon(Icons.search),
                    )),
              ),
              Obx(
                () => Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const ClampingScrollPhysics(),
                    itemCount: controller.restaurants.length,
                    itemBuilder: (context, index) {
                      return RestaurantInfoItemWidget(
                        item: controller.restaurants[index],
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
