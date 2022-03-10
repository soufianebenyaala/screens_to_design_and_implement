import 'package:flutter/material.dart';
import 'package:screens_to_design_and_implement/models/item.dart';

class itemImage extends StatelessWidget {
  const itemImage({
    Key? key,
    required this.item,
  }) : super(key: key);

  final Item item;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image(
        image: NetworkImage(item.image!),
        height: MediaQuery.of(context).size.height / 5,
        //width: MediaQuery.of(context).size.width,
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
