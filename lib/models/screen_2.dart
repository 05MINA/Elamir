import 'package:flutter/material.dart';

import '../moduols/core/ui_components/info_widget.dart';

class ScreenTow extends StatelessWidget {
  const ScreenTow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQueryData = MediaQuery.of(context);
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: InfoWidget(
          builder: (context, deviceInfo){
            return Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  Container(
                    width: screenWidth/5,
                    height: screenHeight,
                    decoration: BoxDecoration(
                      gradient:LinearGradient(colors: <Color>[
                        Colors.greenAccent,
                        Colors.white60
                      ]),
                      border: Border.all(width: 3, color: Colors.green),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                      color: Colors.grey[300],
                      boxShadow: const [
                        BoxShadow(offset: Offset(-10, -10),
                          blurRadius: 15,
                          color: Colors.grey,),
                        BoxShadow(offset: Offset(10, 10),
                          blurRadius: 10,
                          color: Color(0xFFBEBEBE),
                        ),
                      ],),
                  ),
                  SizedBox(width: 10,),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      width: screenWidth/1,
                      height: screenHeight,
                      decoration: BoxDecoration(
                        gradient:LinearGradient(colors: <Color>[
                          Colors.greenAccent,
                          Colors.white60
                        ]),
                        border: Border.all(width: 3, color: Colors.green),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                        color: Colors.grey[300],
                        boxShadow: const [
                          BoxShadow(offset: Offset(-10, -10),
                            blurRadius: 15,
                            color: Colors.grey,),
                          BoxShadow(offset: Offset(10, 10),
                            blurRadius: 10,
                            color: Color(0xFFBEBEBE),
//inset: true,
                          ),
                        ],),
                    ),
                  ),

                ],
              ),
            );
    }
    ));
  }
}
