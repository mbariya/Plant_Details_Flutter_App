import 'package:flutter/material.dart';
import 'package:plant_details_final/main.dart';
import 'DosingTankDesal.dart' as dosingTankDesal;
import 'DriveDesal.dart' as driveDesal;
import 'StorageTankDesal.dart' as storageTankDesal;
import 'operation_parameters_desal.dart' as oprParamDesal;

class DesalPage extends StatefulWidget {
  @override
  _DesalPageState createState() => _DesalPageState();
}

class _DesalPageState extends State<DesalPage> with TickerProviderStateMixin {
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
        new driveDesal.DriveDesal(),
        new dosingTankDesal.DosingTankDesal(),
        new storageTankDesal.StorageTankDesal(),
        new oprParamDesal.OperationParamDesal(),
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
        title: new Text("Desal Area"),
        bottom: new TabBar(
          isScrollable: true,
          controller: controller, //Defining Tabs of Drive
          labelColor: Colors.white,
          tabs:<Widget>[
            new Tab(text: "Drives",),  //For Desal Drives and so on
            new Tab(text: "Dosing Tanks",),
            new Tab(text: "Storage Tanks",),
            new Tab(text:"Operation Parameters",),

          ],
        ),
      ),
      drawer: DrawerOnly(),
      //floatingActionButton: new FloatingActionButton(child: new Icon(Icons.navigate_next),onPressed: null),
      body: _bodywidget(),

    );
  }


}

