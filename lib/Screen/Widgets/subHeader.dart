
import 'package:backdrop/backdrop.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:screens_to_design_and_implement/constants/colors.dart';
import 'package:screens_to_design_and_implement/controller/cart_controller.dart';

class subHeader extends StatelessWidget {
    
   subHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CartController());
    return Container(
      color: DarkPurple,
      child: BackdropSubHeader(
      leading: Container(
        child: Row(children: [
            Icon(Icons.shopping_bag ,color: Colors.white,),
            Text("Bag",style: TextStyle(color: Colors.white,fontSize: 20),),
        ]
        ),
      ),
      title: Container(
        alignment: Alignment.topCenter,
      child: BackdropToggleButton(
          icon: AnimatedIcons.list_view,
          color: Colors.black,
      
      ),
      
      ),
      trailing: Container(
          child: Text(controller.items.length.toString(),
            //controller.items.length.toString(),
            style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Colors.white,
          ),
          alignment: Alignment.center,
          width: 40,
          height: 40,
      ),

    ),
    
    );
  }
}

