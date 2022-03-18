import 'package:flutter/material.dart';
import 'package:screens_to_design_and_implement/Screen/Widgets/CartCounter.dart';
import 'package:screens_to_design_and_implement/models/item.dart';

class ItemBag extends StatefulWidget {
  final Item item;
  const ItemBag({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  State<ItemBag> createState() => _ItemBagState();
}

class _ItemBagState extends State<ItemBag> {
  bool show = true;
  @override
  Widget build(BuildContext context) {
    print(show);
    return show
        ? GestureDetector(
            onTap: () => {
                  setState(() {
                    show = !show;
                  })
                },
            child: Row(
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
                      "1x",
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
                  "N925",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ))
        : GestureDetector(
            onTap: () => {
                  setState(() {
                    show = !show;
                  })
                },
            child: Column(children: [
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
                      "1x",
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
                  "N925",
                  style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
                CartCounter()
            ],))
        ;
  }
}
