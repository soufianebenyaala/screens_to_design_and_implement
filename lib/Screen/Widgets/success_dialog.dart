import 'package:flutter/material.dart';
import 'package:screens_to_design_and_implement/constants/colors.dart';

class SuccessDialog extends StatelessWidget {
  const SuccessDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Dialog(
     shape: RoundedRectangleBorder(
       borderRadius: BorderRadius.circular(10.0),
     ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      child: Stack(
        children: [
          Positioned(
              child: Container(
                height: height/3,
                width: width,
                color: Colors.transparent,)
          ),
          Positioned(
            right: 16,
            left: 16,
            top: 30,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              height: 230,
              width: double.infinity,
              //padding: EdgeInsets.only(left: 27.0),
              //color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 10,),
                  Text("Succeeful",textAlign: TextAlign.center,style: TextStyle( fontSize: 18,fontWeight: FontWeight.bold),),
                  SizedBox(height: 20,),
                  Text("has been added to your bag"),
                  SizedBox(height: 20,),
                  SizedBox(
                    width: 220.0,
                    height: 40,
                    child: RaisedButton(
                      color: DROTurquoise,
                      onPressed: (){},
                      child: Text(
                        "View bag",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  SizedBox(
                    width: 220.0,
                    height: 40,
                    child: RaisedButton(
                      color: DROTurquoise,
                      onPressed: (){},
                      child: Text(
                        "Done",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
              right: 16,
              left: 16,
              top: 0,
              child: CircleAvatar(
                child: CircleAvatar(
                   child:Icon(Icons.done,
                       color: Colors.white,),
                    backgroundColor: DROTurquoise,
                    radius: 26,
                    ),
                backgroundColor: Colors.white,
                radius: 30,)),
        ],
      ),

    );
  }
}
