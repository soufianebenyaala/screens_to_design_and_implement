import 'package:flutter/material.dart';
import 'package:backdrop/backdrop.dart';
import 'package:screens_to_design_and_implement/Screen/Bag.dart';
import 'package:screens_to_design_and_implement/Screen/Store.dart';
import '../Constants/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Backdrop Demo',
      home: BackdropScaffold(
        backLayer: Store(),
        subHeader: subHeader(),
        frontLayer: Bag(),
        revealBackLayerAtStart: true,
      ),
    );
  }
}

class subHeader extends StatelessWidget {
  const subHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: DarkPurple,
      child: BackdropSubHeader(
      leading: Container(
        child: Row(children: [
            Icon(Icons.shopping_bag ,color: Colors.white,),
            Text("Bag",style: TextStyle(color: Colors.white,fontSize: 20),),
        ]
        ),
      ),
      title: Container(
        alignment: Alignment.topCenter,
      child: BackdropToggleButton(
          icon: AnimatedIcons.list_view,
          color: Colors.black,
      
      ),
      
      ),
      trailing: Container(
          child: Text(
            '3',
            style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Colors.white,
          ),
          alignment: Alignment.center,
          width: 40,
          height: 40,
      ),

    ),
    
    );
  }
}

