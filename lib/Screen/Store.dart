import 'package:flutter/material.dart';
import 'package:screens_to_design_and_implement/constants/colors.dart';

import 'Widgets/items.dart';
import 'Widgets/search_bar.dart';

class Store extends StatefulWidget {
  const Store({Key? key}) : super(key: key);

  @override
  _StoreState createState() => _StoreState();
}

class _StoreState extends State<Store> {
  bool search =  false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: _buildAppBar(),
        body: Column(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            //icons(search: search),
            Center(
              child: Wrap(spacing: 40, children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.black12,
                  child: IconButton(
                      color: Grey,
                      icon: const Icon(Icons.swap_vert),
                      onPressed: () {
                        // do something
                      }),
                ),
                CircleAvatar(
                  backgroundColor: Colors.black12,
                  child: IconButton(
                      color: Grey,
                      icon: const Icon(Icons.filter),
                      onPressed: () {
                        // do something
                      }),
                ),
                CircleAvatar(
                  backgroundColor: Colors.black12,
                  child: IconButton(
                      color: Grey,
                      icon: const Icon(Icons.search),
                      onPressed: () {
                        setState(() {
                      search = !search;
                      
                    });
                        // do something
                      }),
                ),
              ]),
            ),
            search
                ? SearchBar()
                : Container(),
            SizedBox(
              height: 15,
            ),
            Items()
          ],
        ));
  }

  AppBar _buildAppBar() {
    return AppBar(
      leading: Icon(
        Icons.arrow_back,
        color: Colors.black,
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      title: Text('125 item(s)',
          style: TextStyle(color: Colors.black, fontSize: 15.0)),
      centerTitle: true,
    );
  }
}

