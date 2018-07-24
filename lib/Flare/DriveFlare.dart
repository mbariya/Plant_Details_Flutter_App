import 'package:flutter/material.dart';


class DriveFlare extends StatefulWidget {
  @override
  _DriveFlareState createState() => _DriveFlareState();
}

class MyItem {
  MyItem(
      {this.isExpanded: false, this.tag, this.details, this.capacity, this.power, this.flc, this.head,}
      );
  bool isExpanded; final String tag; final String details; final String capacity; final String power; final String flc; final String head;
}

class _DriveFlareState extends State<DriveFlare> {
  List<MyItem> _items= <MyItem>[
    //Add Pump and Drives Details here
    MyItem(tag: '185P-102A/B/S', details: 'LP FLARE KOD PUMPS', capacity:'66 M3/Hr', power: '90 KW', flc: '150 Amp', head: ' M'),
    MyItem(tag: '185P-103A/S', details: 'ACID GAS FLARE KOD PUMPS', capacity:'8 M3/Hr', power: '18.5 KW', flc: '31.3 Amp', head: ' M'),
    MyItem(tag: '185EA-101 A/B/C/D', details: 'Slop Air Cooler', capacity:'-', power: '30 KW', flc: '45 Amp', head: ' M'),

  ];

  Widget _driveBody(){
    return new SingleChildScrollView(
      child: new SafeArea(
        top: false,
        bottom: false,
        child: new Container(
          margin: const EdgeInsets.all(20.0),
          child: new ExpansionPanelList(
              expansionCallback: (int index, bool isExpanded){
                setState(() {
                  _items[index].isExpanded=!_items[index].isExpanded;
                });
              },
              children: _items.map((MyItem item){
                return new ExpansionPanel(
                  isExpanded: item.isExpanded,
                  headerBuilder: (BuildContext context, bool isExpanded){
                    return new Container(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: new Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          new Expanded(

                            child: Text(item.tag, style: new TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold,color: Colors.blue),),
                          ),
                          new Expanded(
                            child: Text(item.details, style: new TextStyle(fontSize: 15.0,)),
                          ),
                        ],
                      ),
                    );
                  },
                  body: new Container(
                    padding: const EdgeInsets.only(left: 40.0, bottom: 10.0),
                    child: new Column(
                      children: <Widget>[
                        new Row(
                          children: <Widget>[
                            new Expanded(
                              child: new Container(
                                child: new Text('Capacity:', style: TextStyle( color: Colors.redAccent, fontWeight: FontWeight.bold,), ),
                              ),
                            ),
                            new Expanded(
                              child: new Container(
                                child: new Text(item.capacity),
                              ),
                            ),
                          ],
                        ),
                        new Divider(),
                        new Row(
                          children: <Widget>[
                            new Expanded(
                              child: new Container(
                                child: new Text('Power:', style: TextStyle( color: Colors.redAccent, fontWeight: FontWeight.bold,),),
                              ),
                            ),
                            new Expanded(
                              child: new Container(
                                child: new Text(item.power),
                              ),
                            ),
                          ],
                        ),
                        new Divider(),
                        new Row(
                          children: <Widget>[
                            new Expanded(
                              child: new Container(
                                child: new Text('FLC:', style: TextStyle( color: Colors.redAccent, fontWeight: FontWeight.bold,),),
                              ),
                            ),
                            new Expanded(
                              child: new Container(
                                child: new Text(item.flc),
                              ),
                            ),
                          ],
                        ),
                        new Divider(),
                        new Row(
                          children: <Widget>[
                            new Expanded(
                              child: new Container(
                                child: new Text('Head:', style: TextStyle( color: Colors.redAccent, fontWeight: FontWeight.bold,),),
                              ),
                            ),
                            new Expanded(
                              child: new Container(
                                child: new Text(item.head),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              }).toList()
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: _driveBody(),
    );
  }
}