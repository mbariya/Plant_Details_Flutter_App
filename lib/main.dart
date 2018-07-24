import 'package:flutter/material.dart';
import 'package:plant_details_final/CT1/ct1.dart' as ct1;
import 'package:plant_details_final/CT2/ct2.dart' as ct2;
import 'package:plant_details_final/Desal/desal.dart' as desal;
import 'package:plant_details_final/Flare/flare.dart' as flare;
import 'package:plant_details_final/Piperack/piperack.dart' as piperack;
import 'package:plant_details_final/RO/ro.dart' as ro;
import 'package:plant_details_final/WWTP/wwtp.dart' as wwtp;
import 'Settings.dart';
import 'dart:async';
import 'package:dynamic_theme/dynamic_theme.dart';

void main(){
  runApp(new MyApp()
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DynamicTheme(
      defaultBrightness: Brightness.light,
      data: (brightness) => new ThemeData(
        primarySwatch: Colors.blue,
        brightness: brightness,
      ),
      themedWidgetBuilder: (context, theme)=> new MaterialApp(
        title: "My App",
        theme: theme,
        home: ct1.CT1Page(),
        routes: <String, WidgetBuilder>{
          "/SecondPage":(BuildContext context) => new Settings(),
        },
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  static const String routeName= '/material/expansion_panels';
  @override
  _HomePageState createState() => new _HomePageState();
}

class DrawerOnly extends StatefulWidget {
  @override
  _DrawerOnlyState createState() => _DrawerOnlyState();
}

class _DrawerOnlyState extends State<DrawerOnly> {

  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: new ListView(
        padding: const EdgeInsets.all(0.0),
        children: <Widget>[
          new UserAccountsDrawerHeader(
            accountName: new Text("Developed By: Mohit Bariya"),
            accountEmail: new Text("bariya.mohit@gmail.com"),
            currentAccountPicture: new CircleAvatar(
              //backgroundColor: Colors.blue,
              child: new Image.asset('images/appicon.png',),
            ),
          ),

          new ListTile(
            title: new Text("CT-1 (189)"),
            leading: new Icon(Icons.label),
            onTap: (){
              Navigator.pop(context);
              Navigator.push(context, new MaterialPageRoute(builder: (context)=> new ct1.CT1Page()));
            },
          ),
          new ListTile(
            title: new Text("CT-2 (189)"),
            leading: new Icon(Icons.label),
            onTap: (){
              Navigator.pop(context);
              Navigator.push(context, new MaterialPageRoute(builder: (context)=> new ct2.CT2Page()));
            },
          ),
          new ListTile(
            title: new Text("Desal (182)"),
            leading: new Icon(Icons.label),
            onTap: (){
              Navigator.pop(context);
              Navigator.push(context, new MaterialPageRoute(builder: (context)=> new desal.DesalPage()));
            },
          ),
          new ListTile(
            title: new Text("Flare (185)"),
            leading: new Icon(Icons.label),
            onTap: (){
              Navigator.pop(context);
              Navigator.push(context, new MaterialPageRoute(builder: (context)=> new flare.FlarePage()));
            },
          ),
          new ListTile(
            title: new Text("Piperack (172)"),
            leading: new Icon(Icons.label),
            onTap: (){
              Navigator.pop(context);
              Navigator.push(context, new MaterialPageRoute(builder: (context)=> new piperack.PiperackPage()));
            },
          ),
          new ListTile(
            title: new Text("RO (184)"),
            leading: new Icon(Icons.label),
            onTap: (){
              Navigator.pop(context);
              Navigator.push(context, new MaterialPageRoute(builder: (context)=> new ro.ROPage()));
            },
          ),
          new ListTile(
            title: new Text("WWTP(184)"),
            leading: new Icon(Icons.label),
            onTap: (){
              Navigator.pop(context);
              Navigator.push(context, new MaterialPageRoute(builder: (context)=> new wwtp.WWTPPage()));
            },
          ),
          new Divider(),
          new ListTile(
            title: new Text("Setting"),
            leading: new Icon(Icons.settings),
            onTap: (){
              Navigator.of(context).pushNamed("/SecondPage");
            },
          ),

          new AboutListTile(
            icon: new Icon(Icons.error_outline),
            applicationVersion: '1.0',
            applicationName: "Plant Details",
            applicationIcon: new Image.asset('images/appicon.png', width: 50.0, height: 50.0,),
            aboutBoxChildren: <Widget>[
              new Text("This application is developed By Mr. Mohit Bariya"),
              new Text(""),
              new Text("Contact: bariya.mohit@gmail.com"),
              new Text(""),
              new Text("Application is not for retail use, it is created for personal use only"),
            ],

          ),

          new ListTile(
            title: new Text("Close"),
            leading: new Icon(Icons.close),
            onTap: ()=>Navigator.of(context).pop(),
          ),
        ],
      ),
    );
  }
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{

  Widget _bodywidget(){
    return new TabBarView(
      children: <Widget>[

      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Home Page"),),
      body: _bodywidget(),
      drawer: DrawerOnly(),
      floatingActionButton: new FloatingActionButton(child: new Icon(Icons.skip_next),onPressed: null),
    );
  }
}