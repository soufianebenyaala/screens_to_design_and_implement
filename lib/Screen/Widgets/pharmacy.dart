import 'package:flutter/material.dart';

class pharmacy extends StatelessWidget {
  const pharmacy({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey
              ),
            ),
            SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "SOLD BY",
                  style: TextStyle(color: Colors.grey, fontSize: 10),
                ),
                Text(
                  "Emzor Pharmaceutiacls",
                  style: TextStyle(color:Colors.indigo, fontSize: 13),
                ),
              ],
            )
          ],
        ));
  }
}
