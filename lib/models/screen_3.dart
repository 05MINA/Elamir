import 'package:elamir/moduols/core/functions/get_device_type.dart';
import 'package:flutter/material.dart';

class ScreenThre extends StatelessWidget {
  const ScreenThre({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currenwidth=MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black26,
        shadowColor: Colors.amberAccent,
        title: Text('Customer',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
      ),
      body:Column(

        children: [
          Container(
            width: screenWidth/2,
            height: screenHeight/2,
            decoration: BoxDecoration(
              border: Border.all(width: 3, color: Colors.orange),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),
                  topRight: Radius.circular(20)),
              color: Colors.grey[300],
              boxShadow: const [
                BoxShadow(offset: Offset(-10, -10),
                  blurRadius: 15,
                  color: Colors.black26,),
                BoxShadow(offset: Offset(10, 10),
                  blurRadius: 60,
                  color: Color(0xFFBEBEBE),
                  //inset: true,
                ),
              ],),
            child: Text('Mina'),


          ),
        ],
      ),
    );
  }
}


// LayoutBuilder(builder: (context, constrains) {
//         //var devicetype=getDeviceType(mediaQueryData);
//         double localHeight = constrains.maxHeight;
//         double localWidth = constrains.maxWidth;
//         return Container(
//           color: Colors.red,
//           width: localWidth,
//           height: localHeight,
//         );
//       },),