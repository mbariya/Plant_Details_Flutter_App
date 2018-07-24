import 'package:flutter/material.dart';

class DosingTankWWTP extends StatefulWidget {
  @override
  _DosingTankWWTPState createState() => _DosingTankWWTPState();
}

class MyItem {
  MyItem(
      {this.isExpanded: false, this.tag, this.details, this.capacity, this.dia, this.ht,}
      );
  bool isExpanded; final String tag; final String details; final String capacity; final String dia; final String ht;
}

class _DosingTankWWTPState extends State<DosingTankWWTP> {
  List<MyItem> _items= <MyItem>[
    //Add Dosing Tank Details here
    MyItem(tag: '184V-118 A/B', details: 'FeCl3 Solution dosing tank', capacity:'2200 Lit', dia: '2.1 M', ht: '2.5 M'),
    MyItem(tag: '184V-119 A/B', details: 'DOPE dosing tank', capacity:'14400 Lit', dia: '2.8 M', ht: '3 M'),
    MyItem(tag: '184V-120 A/B', details: 'Polyelectrolyte dosing tank', capacity:'48000 Lit', dia: '4.3 M', ht: '3.9 M'),
    MyItem(tag: '184V-121 A/B', details: 'Nutrient-I Solution dosing tank - Urea', capacity:'4800 Lit', dia: '2.4 M', ht: '2.7 M'),
    MyItem(tag: '184V-122 A/B', details: 'Nutrient-II Solution dosing tank - TSP', capacity:'4800 Lit', dia: '2.1 M', ht: '2.7 M'),
    MyItem(tag: '184V-123', details: 'Caustic Storage day Tank', capacity:'6875 Lit', dia: '3 M', ht: '3.7 M'),
    MyItem(tag: '184V-124 A/B', details: 'Acid Bulk Storage tanks', capacity:'13.5 M3', dia: '2.4 M', ht: '3.5 M'),
    MyItem(tag: '184V-125', details: 'Acid day Tank', capacity:'3840 Lit', dia: '1.6 M', ht: '2.5 M'),
    MyItem(tag: '184V-126 A/B', details: 'Antifoaming Agent Dosing Tank', capacity:'1800 Lit', dia: '2 M', ht: '1.9 M'),
    MyItem(tag: '184V-127 A/S', details: 'H2O2 Storage tank', capacity:'31 M3', dia: '3.1 M', ht: '4.5 M'),
    MyItem(tag: '184V-128', details: 'H2O2 day tank', capacity:'5600 Lit', dia: '1.9 M', ht: '2.5 M'),
    MyItem(tag: '184V-129 A/B', details: 'DWPE - Oily sludge dosing tank', capacity:'8990 Lit', dia: '2.4 M', ht: '2.5 M'),
    MyItem(tag: '184V-130 A/B', details: 'DWPE - Bio-Sludge dosing tank', capacity:'7700 Lit', dia: '2.4 M', ht: '2.5 M'),
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
                                child: new Text('Dia:', style: TextStyle( color: Colors.redAccent, fontWeight: FontWeight.bold,),),
                              ),
                            ),
                            new Expanded(
                              child: new Container(
                                child: new Text(item.dia),
                              ),
                            ),
                          ],
                        ),
                        new Divider(),
                        new Row(
                          children: <Widget>[
                            new Expanded(
                              child: new Container(
                                child: new Text('Height:', style: TextStyle( color: Colors.redAccent, fontWeight: FontWeight.bold,),),
                              ),
                            ),
                            new Expanded(
                              child: new Container(
                                child: new Text(item.ht),
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