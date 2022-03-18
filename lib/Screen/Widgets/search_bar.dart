import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 30.0, right: 30.0, top: 10.0),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(50)),
        child: ListTile(
          leading: Icon(
            Icons.search,
            color: Colors.grey,
            size: 28,
          ),
          title: TextField(
            decoration: InputDecoration(
              hintText: 'type in product name...',
              hintStyle: TextStyle(
                color: Colors.grey,
                fontSize: 18,
                fontStyle: FontStyle.italic,
              ),
              border: InputBorder.none,
            ),
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          trailing: Icon(Icons.close),
        ),
      );
  }
}
