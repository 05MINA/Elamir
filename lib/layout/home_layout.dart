import 'package:elamir/models/screen_1.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import '../models/screen_2.dart';
import '../models/screen_3.dart';
import '../models/test.dart';
import '../moduols/core/ui_components/info_widget.dart';
import '../shared/componentc/conponentc.dart';

class HomeApp extends StatelessWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQueryData = MediaQuery.of(context);
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.black45,
      title: Text('ElAmir', style: TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold, color: Colors.yellowAccent),),
      centerTitle: true,
      elevation: 0.0,),
        body: InfoWidget(
        builder: (context, deviceInfo) {
          return SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  child: InkWell(onTap: () {
                    navigaateTo(context, (ScreenTow()));
                  },
                    child: Container(
                      width: screenWidth,
                      height: screenHeight/2,
                      decoration: BoxDecoration(
                        gradient:LinearGradient(colors: <Color>[
                          Colors.white30,
                          Colors.greenAccent
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
                      child: Padding(padding: const EdgeInsets.all(8.0),
                        child: Container(child: SfRadialGauge(
                            title: GaugeTitle(text: 'Sales Out', textStyle: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold)),
                            axes: <RadialAxis>[RadialAxis(minimum: 0,
                                maximum: 150,
                                ranges: <GaugeRange>[
                                  GaugeRange(startValue: 0,
                                      endValue: 50,
                                      color: Colors.green,
                                      startWidth: 10,
                                      endWidth: 10),
                                  GaugeRange(startValue: 50,
                                      endValue: 100,
                                      color: Colors.orange,
                                      startWidth: 10,
                                      endWidth: 10),
                                  GaugeRange(startValue: 100,
                                      endValue: 150,
                                      color: Colors.red,
                                      startWidth: 10,
                                      endWidth: 10)
                                ],
                                pointers: <GaugePointer>[NeedlePointer(value: 90)],
                                annotations: <GaugeAnnotation>[
                                  GaugeAnnotation(widget: Container(child: Text(
                                      '90.0', style: TextStyle(
                                      fontSize: 25, fontWeight: FontWeight.bold))),
                                      angle: 90,
                                      positionFactor: 0.5)
                                ])
                            ])

                        ),


                      ),

                    ),
                  ),),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),


                  child: Container(
                    width: screenWidth,
                    height: screenHeight,
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
                    child: Padding(padding: const EdgeInsets.all(8.0),
                      child: Container(child: SfRadialGauge(title: GaugeTitle(
                          text: 'Target',
                          textStyle: TextStyle(fontSize: 20.0, fontWeight: FontWeight
                              .bold)),
                          axes: <RadialAxis>[
                            RadialAxis(minimum: 0,
                                maximum: 150,
                                ranges: <GaugeRange>[GaugeRange(startValue: 0,
                                    endValue: 50,
                                    color: Colors.green,
                                    startWidth: 10,
                                    endWidth: 10), GaugeRange(startValue: 50,
                                    endValue: 100,
                                    color: Colors.orange,
                                    startWidth: 10,
                                    endWidth: 10), GaugeRange(startValue: 100,
                                    endValue: 150,
                                    color: Colors.red,
                                    startWidth: 10,
                                    endWidth: 10)
                                ],
                                pointers: <GaugePointer>[NeedlePointer(value: 100)],
                                annotations: <GaugeAnnotation>[GaugeAnnotation(
                                    widget: Container(child: Text('100.0',
                                        style: TextStyle(fontSize: 25,
                                            fontWeight: FontWeight.bold))),
                                    angle: 90,
                                    positionFactor: 0.5)
                                ])
                          ])

                      ),


                    ),

                  ),

                ),
                Container(
                  width: screenWidth/1.5,
                  height: screenHeight/1.5,
                  decoration: BoxDecoration(
                    border: Border.all(width: 3, color: Colors.red),
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    color: Colors.grey[300],
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(-10, -10),
                        blurRadius: 15,
                        color: Colors.black26,
                      ),
                      BoxShadow(
                        offset: Offset(10, 10),
                        blurRadius: 15,
                        color: Colors.grey,
//inset: true,
                      ),
                    ],),

                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                    child: Column(
                      children: [
                        Container(
                          width: screenWidth/2,
                          height: screenHeight/2,
                          decoration: BoxDecoration(
                            border: Border.all(width: 3, color: Colors.red),
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),
                                topRight: Radius.circular(20)),
                            color: Colors.grey[300],
                            boxShadow: const [
                              BoxShadow(
                                offset: Offset(-10, -10),
                                blurRadius: 15,
                                color: Colors.black26,
                              ),
                              BoxShadow(
                                offset: Offset(10, 10),
                                blurRadius: 15,
                                color: Colors.grey,
//inset: true,
                              ),
                            ],),
                          child: Padding(padding: const EdgeInsets.all(8.0),
                            child: Container(child: SfRadialGauge(title: const GaugeTitle(
                                text: 'Customer',
                                textStyle: TextStyle(fontSize: 20.0, fontWeight: FontWeight
                                    .bold)),
                                axes: <RadialAxis>[
                                  RadialAxis(
                                      minimum: 0,
                                      maximum: 150,
                                      ranges: <GaugeRange>[GaugeRange(startValue: 0,
                                          endValue: 50,
                                          color: Colors.green,
                                          startWidth: 10,
                                          endWidth: 10), GaugeRange(startValue: 50,
                                          endValue: 100,
                                          color: Colors.orange[900],
                                          startWidth: 10,
                                          endWidth: 10), GaugeRange(startValue: 100,
                                          endValue: 150,
                                          color: Colors.red,
                                          startWidth: 10,
                                          endWidth: 10)
                                      ],
                                      pointers: <GaugePointer>[NeedlePointer(value: 130)],
                                      annotations: <GaugeAnnotation>[GaugeAnnotation(widget: Container(child: Text(
                                          '90.0', style: TextStyle(
                                          fontSize: 25, fontWeight: FontWeight.bold))),
                                          angle: 90,
                                          positionFactor: 0.5)
                                      ])
                                ])

                            ),


                          ),


                        ),

                      ],
                    ),

                  ),
                ),

              ],
            ),
          );
        },
        ),
    );
  }
}




