import 'package:flutter/material.dart';
import 'package:screens_to_design_and_implement/Screen/Widgets/item_bag.dart';
import 'package:screens_to_design_and_implement/constants/colors.dart';
import 'package:screens_to_design_and_implement/models/item.dart';
import 'package:screens_to_design_and_implement/service/user_service.dart';

import 'Widgets/rounded_button.dart';

class Bag extends StatefulWidget {
  Bag({Key? key}) : super(key: key);

  @override
  State<Bag> createState() => _BagState();
}

class _BagState extends State<Bag> {
  @override
  Widget build(BuildContext context) {
    return UserService.currentBag.length != 0
        ? Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            color: DarkPurple,
            child: Container(
              child: _buildContent(),
            ),
            /*child:  Column(
        children: [
         ...buildList()
        ],
      ),*/
          )
        : Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            color: DarkPurple,
          );
  }

  Widget _buildContent() {
    return ListView.builder(
        itemCount: UserService.currentBag.length,
        itemBuilder: (BuildContext content, int index) {
          Item item = UserService.currentBag[index];
          return ItemBag(item: item);
        });
  }
}
