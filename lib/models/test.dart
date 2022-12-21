import 'package:flutter/material.dart';

class Test_Screen extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    final currenwidth=MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("Hello Appbar"),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () { Scaffold.of(context).openDrawer(); },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.search,
                  size: 26.0,
                ),
              )
          ),
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                    Icons.more_vert
                ),
              )
          ),
        ],
      ),
      backgroundColor:currenwidth<600?Colors.yellowAccent:Colors.red,
      body: Center(
        child: Text(currenwidth.toString()),
      ),
    );
  }
}
