import 'package:flutter/material.dart';
import 'package:screens_to_design_and_implement/constants/colors.dart';

import 'Widgets/items.dart';
class Store extends StatefulWidget {
  const Store({Key? key}) : super(key: key);

  @override
  _StoreState createState() => _StoreState();
}

class _StoreState extends State<Store> {
  bool search = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: _buildAppBar(),
        body:Column(
          children: <Widget>[
            SizedBox(height: 10,),
            icons(),
            _searchBar(search),
            SizedBox(height: 15,),
            Items()
          ],
        )

    );
  }



   AppBar _buildAppBar() {
    return AppBar(
      leading: Icon(
        Icons.arrow_back,
        color: Colors.black,
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      title: Text('125 item(s)', style: TextStyle(
        color: Colors.black,
        fontSize: 15.0
      )),
      centerTitle: true,
    );
  }

}

class icons extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Wrap(
        spacing: 40,

        children: <Widget>[
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
                color:Grey,
                icon: const Icon(Icons.search),
                onPressed: () {

                  // do something
                }),
          ),
        ]
    );
  }
}

  Widget _searchBar(bool search) {
    if(search){
      return Container(
        margin: EdgeInsets.only(left: 30.0,right: 30.0,top: 10.0),

        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(50)
        ),
        child:  ListTile(

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
    return Container();

  }







