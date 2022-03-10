import 'package:flutter/material.dart';
import 'package:screens_to_design_and_implement/constants/colors.dart';


class productDetail extends StatelessWidget {
  final IconData icon;
  final String text;
  final String title;
  const productDetail({
    Key? key, required this.icon, required this.text, required  this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(icon,size: 40,color: DROPurple,),
            SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
                Text(
                  title,
                  style: TextStyle(color:Colors.indigo
                      , fontSize: 15,fontWeight: FontWeight.bold),
                ),
              ],
            )
          ],
        ));
  }
}
