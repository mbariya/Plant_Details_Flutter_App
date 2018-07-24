import 'package:flutter/material.dart';


class DriveCT1 extends StatefulWidget {
  @override
  _DriveCT1State createState() => _DriveCT1State();
}

class MyItem {
  MyItem(
      {this.isExpanded: false, this.tag, this.details, this.capacity, this.power, this.flc, this.head,}
      );
  bool isExpanded; final String tag; final String details; final String capacity; final String power; final String flc; final String head;
}

class _DriveCT1State extends State<DriveCT1> {
  List<MyItem> _items= <MyItem>[
    //Add Pump and Drives Details here
    MyItem(tag: '189P-101 A/S', details: 'CT-1 circulation Pumps', capacity:'8000 M3/Hr', power: '1950 KW', flc: '211 Amp', head: '0 M'),
    MyItem(tag: '189P-101 B', details: 'CT-1 circulation Pump', capacity:'8000 M3/Hr', power: '1950 KW', flc: '204 Amp', head: '0 M'),
    MyItem(tag: '189EFM-101 A/B/S', details: 'CT-1 Fans', capacity:'3500 M3/Hr', power: '160 KW', flc: '267 Amp', head: '0 M'),
    MyItem(tag: '189P-011 A/S', details: 'FOLS Pump-A', capacity:'15 LPM', power: '0.65 KW', flc: '1.8 Amp', head: '0 M'),
    MyItem(tag: '189P-012 A/S', details: 'FOLS Pump-S', capacity:'15 LPM', power: '0.65 KW', flc: '1.8 Amp', head: '0 M'),
    MyItem(tag: '189P-061 A/S', details: 'Acid unloading/transfer pumps', capacity:'5 M3/Hr', power: '2.2 KW', flc: '4.55 Amp', head: '0 M'),
    MyItem(tag: '189P-062 A/S', details: 'Acid dosing pump', capacity:'200 LPH', power: '0.37 KW', flc: '1.02 Amp', head: '0 M'),
    MyItem(tag: '189P-063 A/S', details: 'Solution transfer pump', capacity:'5 M3/Hr', power: '2.2 KW', flc: '4.36 Amp', head: '0 M'),
    MyItem(tag: '189P-064 A/B/S', details: '64A/B(Ca) & 64S (Soda)', capacity:'200 LPH', power: '0.37 KW', flc: '1.02 Amp', head: '0 M'),
    MyItem(tag: '189MXM-061', details: 'Agitators for solution preparation Tank', capacity:'-', power: '1.1 KW', flc: '2.45 Amp', head: '0 M'),
    MyItem(tag: '189AGT-01A', details: 'Caustic Tank Agitator', capacity:'-', power: '1.5 KW', flc: '3.34 Amp', head: '0 M'),
    MyItem(tag: '189B-01A/02A', details: 'Chlorine Blower', capacity:'1500 M3/Hr', power: '3.7 KW', flc: '7.13 Amp', head: '0 M'),
    MyItem(tag: '189K-101A/B', details: 'Filter air blower', capacity:'453 M3/Hr', power: '7.5 KW', flc: '14.5 Amp', head: '0 M'),
    MyItem(tag: '189CP-01A/02A', details: 'Caustic circulation Pump', capacity:'-', power: '3.7 KW', flc: '7.13 Amp', head: '0 M'),


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
                      padding: const EdgeInsets.only(left: 5.0),
                      child: new Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          new Expanded(
                            flex: 3,
                            child: new Container(
                              margin: const EdgeInsets.only(left: 5.0),
                              child: new FittedBox(
                                fit: BoxFit.scaleDown,
                                alignment: Alignment.centerLeft,
                                child: Text(item.tag, style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold,color: Colors.blue),
                                ),
                              ),
                            ),
                          ),
                          new Expanded(
                            flex: 4,
                            child: new Container(
                              margin: const EdgeInsets.only(left: 5.0),
                              child: new FittedBox(
                                fit: BoxFit.scaleDown,
                                alignment: Alignment.centerLeft,
                                child: Text(item.details, style: TextStyle(fontSize: 15.0,)
                                ),
                              ),
                            ),
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