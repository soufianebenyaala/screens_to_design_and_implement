import 'package:flutter/material.dart';
import 'package:screens_to_design_and_implement/constants/colors.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final bool icon;
  final double borderRadius;
  final VoidCallback press;
  final Color color, textColor;
  const RoundedButton({
    Key? key,
    required this.icon,
    required this.borderRadius,
    required this.text,
    required this.press,
    this.color = DROPurple,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius),
        child: newElevatedButton(icon),
      ),
    );
  }

  //Used:ElevatedButton as FlatButton is deprecated.
  //Here we have to apply customizations to Button by inheriting the styleFrom

  Widget newElevatedButton(icon) {
    if(icon){
      return ElevatedButton(
        child: Container(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.shopping_bag ,color: textColor,),
                SizedBox(width: 20,),
                Text(
                  text,
                  style: TextStyle(color: textColor,fontSize: 16),
                ),
              ]
          ),
        ),
        onPressed: press,
        style: ElevatedButton.styleFrom(
            primary: color,
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            textStyle: TextStyle(
                color: textColor, fontSize: 14, fontWeight: FontWeight.w500)),
      );
    }else {
      return ElevatedButton(
        child: Container(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  text,
                  style: TextStyle(color: textColor, fontSize: 16),
                ),
              ]
          ),
        ),
        onPressed: press,
        style: ElevatedButton.styleFrom(
            primary: color,
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            textStyle: TextStyle(
                color: textColor, fontSize: 14, fontWeight: FontWeight.w500)),
      );
    }
  }
}
