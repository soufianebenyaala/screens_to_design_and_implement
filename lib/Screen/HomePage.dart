import 'package:flutter/material.dart';
import 'package:backdrop/backdrop.dart';
import 'package:screens_to_design_and_implement/Screen/Bag.dart';
import 'package:screens_to_design_and_implement/Screen/Store.dart';
import 'package:screens_to_design_and_implement/Screen/Widgets/subHeader.dart';
import '../Constants/colors.dart';

class HomePage extends StatefulWidget {
  final bool showLayer;
  const HomePage({ Key? key ,required this.showLayer}) : super(key: key);

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
        revealBackLayerAtStart: widget.showLayer,
        
      ),
    );
  }
}
