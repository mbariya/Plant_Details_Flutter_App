import 'package:flutter/material.dart';


class DrivePR extends StatefulWidget {
  @override
  _DrivePRState createState() => _DrivePRState();
}

class MyItem {
  MyItem(
      {this.isExpanded: false, this.tag, this.details, this.capacity, this.power, this.flc, this.head,}
      );
  bool isExpanded; final String tag; final String details; final String capacity; final String power; final String flc; final String head;
}

class _DrivePRState extends State<DrivePR> {
  List<MyItem> _items= <MyItem>[
    //Add Pump and Drives Details here
    MyItem(tag: '189P-101 A/S', details: 'CT-1 circulation Pumps', capacity:'8000 M3/Hr', power: '1950 KW', flc: '211 Amp', head: '0 M'),


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
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Table(
                            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                            children: [
                              new TableRow(
                                children: [
                                  new Container(
                                    //padding: new EdgeInsets.all(10.0),
                                    child: Text(item.tag, style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),),
                                  ),
                                  new Container(
                                    //padding: new EdgeInsets.all(10.0),
                                    child: Text(item.details,),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },

                  body: Container(
                    margin: new EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Table(
                          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                          border: TableBorder(
                            //top: BorderSide(width: 0.1),
                            //bottom: BorderSide(width: 0.1),
                            horizontalInside: BorderSide(width: 0.1),
                          ),
                          children: [
                            new TableRow(
                              children: [
                                new Container(
                                  padding: new EdgeInsets.all(10.0),
                                  child: new Text('Capacity:', style: TextStyle( color: Colors.redAccent, fontWeight: FontWeight.bold,), ),
                                ),
                                new Container(
                                  padding: new EdgeInsets.all(10.0),
                                  child: new Text(item.capacity),
                                ),
                              ],
                            ),
                            new TableRow(
                              children: [
                                new Container(
                                  padding: new EdgeInsets.all(10.0),
                                  child: new Text('Power:', style: TextStyle( color: Colors.redAccent, fontWeight: FontWeight.bold,),),
                                ),
                                new Container(
                                  padding: new EdgeInsets.all(10.0),
                                  child: new Text(item.power),
                                ),
                              ],
                            ),
                            new TableRow(
                              children: [
                                new Container(
                                  padding: new EdgeInsets.all(10.0),
                                  child: new Text('FLC:', style: TextStyle( color: Colors.redAccent, fontWeight: FontWeight.bold,),),
                                ),
                                new Container(
                                  padding: new EdgeInsets.all(10.0),
                                  child: new Text(item.flc),
                                ),
                              ],
                            ),
                            new TableRow(
                              children: [
                                new Container(
                                  padding: new EdgeInsets.all(10.0),
                                  child: new Text('Head:', style: TextStyle( color: Colors.redAccent, fontWeight: FontWeight.bold,),),
                                ),
                                new Container(
                                  padding: new EdgeInsets.all(10.0),
                                  child: new Text(item.head),
                                ),
                              ],
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