import 'package:flutter/material.dart';
import 'package:plant_details_final/main.dart';
import 'DriveWWTP.dart' as driveWWTP;
import 'DosingTankWWTP.dart' as dosingTankWWTP;
import 'FilterWWTP.dart' as filterWWTP;
import 'StorageTankWWTP.dart' as storageTankWWTP;


class WWTPPage extends StatefulWidget {
  @override
  _WWTPPageState createState() => _WWTPPageState();
}

class _WWTPPageState extends State<WWTPPage> with TickerProviderStateMixin {
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
        new driveWWTP.DriveWWTP(),
        new dosingTankWWTP.DosingTankWWTP(),
        new filterWWTP.FilterWWTP(),
        new storageTankWWTP.StorageTankWWTP(),
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
        title: new Text("WWTP Area"),
        bottom: new TabBar(
          isScrollable: true,
          controller: controller, //Defining Tabs of Drive
          labelColor: Colors.white,
          tabs:<Widget>[
            new Tab(text: "Drives",),  //For WWTP Drives and so on
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

