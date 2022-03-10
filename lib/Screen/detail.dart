
import 'package:flutter/material.dart';
import 'package:screens_to_design_and_implement/Screen/Widgets/rounded_button.dart';
import 'package:screens_to_design_and_implement/constants/colors.dart';
import 'package:screens_to_design_and_implement/models/item.dart';

import 'Widgets/CartCounter.dart';
import 'Widgets/itemImage.dart';
import 'Widgets/pharmacy.dart';
import 'Widgets/product_details.dart';
import 'Widgets/success_dialog.dart';

class DetailScreen extends StatelessWidget {
  final Item item;
  const DetailScreen({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Wrap(
            runSpacing: 15,
            children: [
              itemImage(item: item),
              Column(
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        item.title!,
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                        textAlign: TextAlign.left,
                      )),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        item.text2! + " - " + item.mass!.toString() + 'mg',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                      )),
                ],
              ),
              pharmacy(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CartCounter(),
                  Text("385",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                ],
              ),
              Align(
                alignment: Alignment.centerLeft,
                child:Text("PRODUCT DETAILS",style: TextStyle(fontSize: 18,color: Colors.grey),),
              ),
              itemdetails(),
              SizedBox(width: 10,),
              Align(
                  alignment: Alignment.center,
                  child: Text("1 pack of gralic 3 unit(s) of 10 tablet(s)",style: TextStyle(fontSize: 12,color: Colors.grey),)),

            ],
          ),
        ),
      bottomNavigationBar: Container(
          margin: EdgeInsets.only(left: 50,right: 50),
          child: RoundedButton(
            borderRadius:13.0,
            icon: true,
            text: "Add to bag",
            //color: kPrimaryLightColor,
            textColor: Colors.white,
            press: () {
              showDialog(context:context, builder: (context)
                  {
                    return SuccessDialog();
                  }
              );},
          ),
      ),

    );
  }
  AppBar _buildAppBar() {
    return AppBar(
      leading: Icon(
        Icons.arrow_back,
        color: Colors.black,
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
              "3",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ]),
        ),
      ],
    );
  }
}






