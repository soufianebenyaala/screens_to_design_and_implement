import 'package:flutter/material.dart';
import 'package:screens_to_design_and_implement/constants/colors.dart';

import 'Widgets/rounded_button.dart';


class Bag extends StatelessWidget {
  Bag({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      color: DarkPurple,
      child:  Column(
        children: [
          ItemparRow(),
          SizedBox(height: 20,),
          ItemparRow(),
          SizedBox(height: 20,),
          ItemparRow(),
          SizedBox(height: 20,),
          ItemparRow(),
          Spacer(),
          BagBottom()
        ],
      ),
    );
  }
}

class BagBottom extends StatelessWidget {
  const BagBottom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Total",style: TextStyle(fontSize: 20,color: Colors.white),),
            Text("N2590",style: TextStyle(fontSize: 20,color: Colors.white),),
          ],
        ),
        SizedBox(height: 20,),
        RoundedButton(
          borderRadius:50.0,
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

class ItemparRow extends StatelessWidget {
  const ItemparRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundColor: Colors.white,
              backgroundImage: NetworkImage("https://nowpx.com.ng/wp-content/uploads/2021/01/emzifix-suspension-300x300.png"),
            ),
            SizedBox(width: 10,),
            Text("1x",style: TextStyle(color: Colors.white),),
            SizedBox(width: 10,),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Vitamin E 400",style: TextStyle(color: Colors.white),),
                Text("Capsule",style: TextStyle(color: Colors.white),),
              ],
            ),

          ],
        ),
        Text("N925",style: TextStyle(color: Colors.white),),


      ],
    );
  }
}
