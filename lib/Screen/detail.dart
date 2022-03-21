import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:screens_to_design_and_implement/Screen/Widgets/rounded_button.dart';
import 'package:screens_to_design_and_implement/constants/colors.dart';
import 'package:screens_to_design_and_implement/controller/cart_controller.dart';
import 'package:screens_to_design_and_implement/models/item.dart';

import 'Widgets/CartCounter.dart';
import 'Widgets/itemImage.dart';
import 'Widgets/pharmacy.dart';
import 'Widgets/product_details.dart';
import 'Widgets/success_dialog.dart';

class DetailScreen extends StatefulWidget {
  final int index;
  const DetailScreen({Key? key, required this.index}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  final cartcontroller = Get.put(CartController());
  int quantity = 1;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: _buildAppBar(cartcontroller),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Wrap(
          runSpacing: 15,
          children: [
            itemImage(item: Item.items[widget.index]),
            Column(
              children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      Item.items[widget.index].title!,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      textAlign: TextAlign.left,
                    )),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      Item.items[widget.index].text2! +
                          " - " +
                          Item.items[widget.index].mass!.toString() +
                          'mg',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    )),
              ],
            ),
            pharmacy(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    buildOutlineButton(
                        icon: Icons.remove,
                        press: () {
                          if (quantity > 1) {
                            setState(() {
                              quantity--;
                            });
                          }
                        }),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          quantity.toString(),
                          style: TextStyle(fontSize: 25),
                        )),
                    buildOutlineButton(
                        icon: Icons.add,
                        press: () {
                          setState(() {
                            quantity++;
                          });
                        }),
                    Text(
                      "Pack(s)",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                Text(
                  "385",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "PRODUCT DETAILS",
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
            ),
            itemdetails(),
            SizedBox(
              width: 10,
            ),
            Align(
                alignment: Alignment.center,
                child: Text(
                  "1 pack of gralic 3 unit(s) of 10 tablet(s)",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                )),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(left: 50, right: 50),
        child: RoundedButton(
          borderRadius: 13.0,
          icon: true,
          text: "Add to bag",
          //color: kPrimaryLightColor,
          textColor: Colors.white,
          press: () {
            showDialog(
                context: context,
                builder: (context) {
                  cartcontroller.addItem(Item.items[widget.index],quantity);
                  return SuccessDialog();
                });
          },
        ),
      ),
    );
  }

  AppBar _buildAppBar(cartcontroller) {
    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        color: Colors.black,
        onPressed: () => {Navigator.pop(context)},
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      actions: [
        Container(
          margin: EdgeInsets.only(right: 15),
          width: 70,
          //color: DROPurple,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: DROPurple,
          ),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(
              Icons.shopping_bag,
              color: Colors.white,
            ),
            Text(
              cartcontroller.items.length.toString(),
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ]),
        ),
      ],
    );
  }

  Container buildOutlineButton(
      {required IconData icon, required VoidCallback press}) {
    return Container(
      width: 40,
      height: 32,
      child: IconButton(
        onPressed: press,
        icon: Icon(icon),
      ),
    );
  }
}
