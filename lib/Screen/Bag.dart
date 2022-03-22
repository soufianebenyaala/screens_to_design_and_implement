import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:screens_to_design_and_implement/Screen/Widgets/item_bag.dart';
import 'package:screens_to_design_and_implement/constants/colors.dart';
import 'package:screens_to_design_and_implement/controller/cart_controller.dart';
import 'package:screens_to_design_and_implement/models/item.dart';
import 'package:screens_to_design_and_implement/service/user_service.dart';

import 'Widgets/BagBottom.dart';
import 'Widgets/rounded_button.dart';

class Bag extends StatefulWidget {
  Bag({Key? key}) : super(key: key);

  @override
  State<Bag> createState() => _BagState();
}

class _BagState extends State<Bag> {
  final controller = Get.put(CartController());
  @override
  Widget build(BuildContext context) {
    print(controller.items.length);
    return controller.items.length != 0
        ? Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            color: DarkPurple,
            child: Column(children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20),
                    color: Colors.white
                    ),
                child: Text("Tap on item for add, remove, delete options",style: TextStyle(fontSize: 15),),
              ),
              Obx(
                () => Container(
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: controller.items.length,
                      itemBuilder: (BuildContext content, int index) {
                        return Container(
                          padding: EdgeInsets.all(12.0),
                          child: ItemBag(
                              controller: controller,
                              item: controller.items.keys.toList()[index],
                              quantity: controller.items.values.toList()[index],
                              index: index),
                        );
                      }),
                ),
              ),
              Spacer(),
              BagBottom(controller: controller),
            ]))
        : Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            color: DarkPurple,
          );
  }
}
