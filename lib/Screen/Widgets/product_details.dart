import 'package:flutter/material.dart';
import 'package:screens_to_design_and_implement/Screen/Widgets/productDetail.dart';

class itemdetails extends StatelessWidget {
  const itemdetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            productDetail(icon: Icons.medication, text: 'PACK SIZE',title:"3x10"),
            SizedBox(height: 10,),
            productDetail(icon: Icons.medication, text: 'CONSTITUENTS',title:"Garlic Oil"),
            SizedBox(height: 10,),
            productDetail(icon: Icons.health_and_safety, text: 'DESPENSED',title:"Pack"),

          ],
        ),
        SizedBox(width: 20,),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            productDetail(icon: Icons.qr_code, text: 'PRODUCT ID',title:"LKQNDKJFNSFD"),
          ],
        )
      ],
    );
  }
}


