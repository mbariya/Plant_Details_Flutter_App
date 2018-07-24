import 'package:flutter/material.dart';
import 'package:plant_details_final/main.dart';
import 'package:plant_details_final/CT2/DriveCT2.dart' as driveCT2;
import 'DosingTankCT2.dart' as dosingTankCT2;
import 'FilterCT2.dart' as filterCT2;


class CT2Page extends StatefulWidget {
  @override
  _CT2PageState createState() => _CT2PageState();
}

class _CT2PageState extends State<CT2Page> with TickerProviderStateMixin {
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
        new driveCT2.DriveCT2(),
        new dosingTankCT2.DosingTankCT2(),
        new filterCT2.FilterCT2(),
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
        title: new Text("CT-2 Area"),
        bottom: new TabBar(
          isScrollable: true,
          controller: controller, //Defining Tabs of Drive
          labelColor: Colors.white,
          tabs:<Widget>[
            new Tab(text: "Drives",),  //For CT-2 Drives and so on
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

