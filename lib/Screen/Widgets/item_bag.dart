import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:screens_to_design_and_implement/Screen/Widgets/BagBottom.dart';
import 'package:screens_to_design_and_implement/Screen/Widgets/CartCounter.dart';
import 'package:screens_to_design_and_implement/constants/colors.dart';
import 'package:screens_to_design_and_implement/controller/cart_controller.dart';
import 'package:screens_to_design_and_implement/models/item.dart';

class ItemBag extends StatefulWidget {
  final Item item;
  final CartController controller;
  final int quantity;
  final int index;
  ItemBag({
    Key? key,
    required this.item,
    required this.controller,
    required this.index,
    required this.quantity,
  }) : super(key: key);

  @override
  State<ItemBag> createState() => _ItemBagState();
}

class _ItemBagState extends State<ItemBag> {
  bool show =false;
  @override
  Widget build(BuildContext context) {
  
  

    return GestureDetector(
        onTap: () => { setState(() { show = !show; })},
        child: Column(
          children: [
            Row(
              //mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(widget.item.image!),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      widget.quantity.toString() + "x",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.item.title!,
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          widget.item.text1!,
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
                Text(
                  "N"+ widget.item.price.toString(),
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
             show ?
                         Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {
                              widget.controller.deleteItem(widget.item);
                            },
                            icon: Icon(
                              Icons.delete,
                              color: Colors.white,
                              size: 35,
                            ),
                          ),
                          Row(
                            children: [
                              buildOutlineButton(
                                  icon: Icons.remove,
                                  press: () {
                                   widget.controller.removeItem(widget.item);
                                  }),
                             Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 5.0),
                                  child: Text(
                                    widget.quantity.toString(),
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.white),
                                  )),
                              buildOutlineButton(
                                  icon: Icons.add,
                                  press: () {
                                     widget.controller.addItemBag(widget.item);
                                    
                                  }),
                            ],
                          ),
                        ],
                      ):Container(),
                    
            ],
        ));
 
  }

  Container buildOutlineButton(
      {required IconData icon, required VoidCallback press}) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      width: 40,
      height: 40,
      child: IconButton(
        onPressed: press,
        icon: Icon(icon),
        color: DarkPurple,
      ),
    );
  }
}
