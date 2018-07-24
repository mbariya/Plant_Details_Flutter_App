import 'package:flutter/material.dart';
import 'package:plant_details_final/main.dart';
import 'package:plant_details_final/CT1/DriveCT1.dart' as driveCT1;
import 'package:plant_details_final/CT1/DosingTankCT1.dart' as dosingTankCT1;
import 'package:plant_details_final/CT1/FilterCT1.dart' as filterCT1;


class CT1Page extends StatefulWidget {
  @override
  _CT1PageState createState() => _CT1PageState();
}

class _CT1PageState extends State<CT1Page> with TickerProviderStateMixin {
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
        new driveCT1.DriveCT1(),
        new dosingTankCT1.DosingTankCT1(),
        new filterCT1.FilterCT1(),
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
        title: new Text("CT-1 Area"),
        bottom: new TabBar(
          isScrollable: true,
          //indicatorColor: Colors.red,
          controller: controller, //Defining Tabs of Drive
          labelColor: Colors.white,
          tabs:<Widget>[
            new Tab(text: "Drives",),  //For CT-1 Drives and so on
            new Tab(text: "Dosing Tanks",),
            new Tab(text: "SSF",),

          ],
        ),
      ),
      drawer: DrawerOnly(),
      floatingActionButton: new FloatingActionButton(child: new Icon(Icons.navigate_next),onPressed: null),
      body: _bodywidget(),

    );
  }


}

