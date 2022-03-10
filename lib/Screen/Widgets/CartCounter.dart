import 'package:flutter/material.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({Key? key}) : super(key: key);

  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildOutlineButton(
            icon: Icons.remove,
            press: () {
              if(numOfItems>1){
                setState(() {
                  numOfItems--;
                });
              }
            }
        ),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child:Text(
              numOfItems.toString(),
              style: TextStyle(fontSize: 25),
            )
        ),
        buildOutlineButton(
            icon: Icons.add,
            press: () {
              setState(() {
                numOfItems++;
              });
            }
        ),
        Text("Pack(s)",style: TextStyle(color: Colors.grey),),
      ],
    );
  }

  Container buildOutlineButton({required IconData icon,required VoidCallback press}) {
    return Container(

      width: 40,
      height: 32,
      child: IconButton(
        onPressed: press,
        icon:Icon(icon),
      ),

    );
  }
}

