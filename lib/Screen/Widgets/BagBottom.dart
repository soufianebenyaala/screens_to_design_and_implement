import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:screens_to_design_and_implement/Screen/Widgets/rounded_button.dart';
import 'package:screens_to_design_and_implement/controller/cart_controller.dart';

class BagBottom extends StatelessWidget {
  final CartController controller;
  BagBottom({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Total",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            Obx(() => controller.items.length != 0
                ? Text(
                    '${controller.total}',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )
                : Text(
                    '0',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        RoundedButton(
          borderRadius: 50.0,
          icon: false,
          text: "Checkout",
          color: Colors.white,
          textColor: Colors.black,
          press: () {},
        ),
      ],
    );
  }
}
