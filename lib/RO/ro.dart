import 'package:flutter/material.dart';
import 'package:plant_details_final/main.dart';
import 'package:plant_details_final/RO/DriveRO.dart' as driveRO;
import 'package:plant_details_final/RO/DosingTankRO.dart' as dosingTankRO;
import 'package:plant_details_final/RO/FilterRO.dart' as filterRO;
import 'package:plant_details_final/RO/StorageTankRO.dart' as storageTankRO;


class ROPage extends StatefulWidget {
  @override
  _ROPageState createState() => _ROPageState();
}

class _ROPageState extends State<ROPage> with TickerProviderStateMixin {
  TabController controller;  //defining tab controller
  Icon actionIcon = new Icon(Icons.search, color: Colors.white,);


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = new TabController(length: 4, vsync: this);
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
        new driveRO.DriveRO(),
        new dosingTankRO.DosingTankRO(),
        new filterRO.FilterRO(),
        new storageTankRO.StorageTankRO(),
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
        title: new Text("RO Area"),
        bottom: new TabBar(
          isScrollable: true,
          controller: controller, //Defining Tabs of Drive
          labelColor: Colors.white,
          tabs:<Widget>[
            new Tab(text: "Drives",),  //For RO Drives and so on
            new Tab(text: "Dosing Tanks",),
            new Tab(text: "Filters",),
            new Tab(text: "Storage Tanks",),

          ],
        ),
      ),
      drawer: DrawerOnly(),
      floatingActionButton: new FloatingActionButton(child: new Icon(Icons.navigate_next),onPressed: null),
      body: _bodywidget(),

    );
  }


}

