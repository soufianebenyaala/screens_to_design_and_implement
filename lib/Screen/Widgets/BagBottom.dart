import 'package:flutter/material.dart';
import 'package:screens_to_design_and_implement/Screen/Widgets/rounded_button.dart';

class BagBottom extends StatefulWidget {
  const BagBottom({
    Key? key,
  }) : super(key: key);

  @override
  State<BagBottom> createState() => _BagBottomState();
}

class _BagBottomState extends State<BagBottom> {
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
