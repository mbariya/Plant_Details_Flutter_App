import 'package:flutter/material.dart';
import 'package:plant_details_final/main.dart';
import 'DriveFlare.dart' as driveFlare;


class FlarePage extends StatefulWidget {
  @override
  _FlarePageState createState() => _FlarePageState();
}

class _FlarePageState extends State<FlarePage> with TickerProviderStateMixin {
  TabController controller;  //defining tab controller
  Icon actionIcon = new Icon(Icons.search, color: Colors.white,);


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = new TabController(length: 3, vsync: this);
  }
  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  Widget _bodywidget(){
    return new TabBarView(
      controller: controller,
      children: <Widget>[
        new driveFlare.DriveFlare(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: false,
        actions: <Widget>[
          new IconButton(
            icon: actionIcon,
            onPressed: null,
          ),
        ],
        title: new Text("Flare Area"),
        bottom: new TabBar(
          controller: controller, //Defining Tabs of Drive
          labelColor: Colors.white,
          tabs:<Widget>[
            new Tab(text: "Drive",),  //For Flare Drives and so on
            //new Tab(text: "Dosing Tanks",),
            //new Tab(text: "SSF",),

          ],
        ),
      ),
      drawer: DrawerOnly(),
      floatingActionButton: new FloatingActionButton(child: new Icon(Icons.navigate_next),onPressed: null),
      body: _bodywidget(),

    );
  }


}

