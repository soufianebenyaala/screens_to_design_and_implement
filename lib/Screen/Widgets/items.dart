import 'package:flutter/material.dart';
import 'package:screens_to_design_and_implement/Screen/detail.dart';
import 'package:screens_to_design_and_implement/constants/colors.dart';
import 'package:screens_to_design_and_implement/models/item.dart';


class Items extends StatelessWidget {

  late final Item item;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GridView.builder(
            padding: EdgeInsets.symmetric(horizontal: 15),
            itemCount: Item.items.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 2,
              mainAxisExtent: 230,
              //childAspectRatio: 10,
            ),
            itemBuilder: (context, index) => ItemCard(
                  index: index,
                )
        )
    );
  }
}

class ItemCard extends StatelessWidget {
  final int index;
  //final Function press;
  const ItemCard({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => DetailScreen(index: index)))
      },
      child: Card(
          elevation: 3.0,
          child: Column(
            children: <Widget>[
              Container(
                child: Image(
                  image: NetworkImage(Item.items[index].image!),
                  height: 150,
                  fit: BoxFit.fitWidth,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 5.0),
                alignment: Alignment.topLeft,
                child: Text(
                  Item.items[index].title!,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 5.0),
                alignment: Alignment.topLeft,
                child: Text(
                  Item.items[index].text1!,
                  style: TextStyle(color: Grey, fontSize: 10),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 5.0),
                alignment: Alignment.topLeft,
                child: Text(
                  Item.items[index].text2! + " - " + Item.items[index].mass!.toString() + 'mg',
                  style: TextStyle(color: Grey, fontSize: 10),
                ),
              ),
              Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    width: 50,
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(right: 5.0, top: 5.0),
                    padding: const EdgeInsets.only(
                        left: 6.0, top: 4.0, bottom: 4.0, right: 6.0),
                    decoration: BoxDecoration(
                        color: Grey, borderRadius: BorderRadius.circular(15.0)),
                    child: Text(
                      "N" + Item.items[index].price.toString(),
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                  ))
            ],
          )),
    );
  }
}

Widget _buildItem(Item item) {
  return Card(
      elevation: 3.0,
      child: Column(
        children: <Widget>[
          Container(
            child: Image(
              image: NetworkImage(item.image!),
              height: 150,
              fit: BoxFit.fitWidth,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 5.0),
            alignment: Alignment.topLeft,
            child: Text(
              item.title!,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 5.0),
            alignment: Alignment.topLeft,
            child: Text(
              item.text1!,
              style: TextStyle(color: Grey, fontSize: 10),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 5.0),
            alignment: Alignment.topLeft,
            child: Text(
              item.text2! + " - " + item.mass!.toString() + 'mg',
              style: TextStyle(color: Grey, fontSize: 10),
            ),
          ),
          Align(
              alignment: Alignment.bottomRight,
              child: Container(
                width: 50,
                alignment: Alignment.center,
                margin: const EdgeInsets.only(right: 5.0, top: 5.0),
                padding: const EdgeInsets.only(
                    left: 6.0, top: 4.0, bottom: 4.0, right: 6.0),
                decoration: BoxDecoration(
                    color: Grey, borderRadius: BorderRadius.circular(15.0)),
                child: Text(
                  "N" + item.price.toString(),
                  style: TextStyle(fontSize: 10, color: Colors.white),
                ),
              ))
        ],
      ));
}
