import 'package:flutter/material.dart';


class DriveCT2 extends StatefulWidget {
  @override
  _DriveCT2State createState() => _DriveCT2State();
}

class MyItem {
  MyItem(
      {this.isExpanded: false, this.tag, this.details, this.capacity, this.power, this.flc, this.head,}
      );
  bool isExpanded; final String tag; final String details; final String capacity; final String power; final String flc; final String head;
}

class _DriveCT2State extends State<DriveCT2> {
  List<MyItem> _items= <MyItem>[
    //Add Pump and Drives Details here
    MyItem(tag: '189P-102 A/B/C/S', details: 'CT-2 circulation Pumps', capacity:'8000 M3/Hr', power: '1950 KW', flc: '211 Amp', head: ' M'),
    MyItem(tag: '189EFM-101 A to S', details: 'CT-2 Fans', capacity:'3500 M3/Hr', power: '160 KW', flc: '267 Amp', head: ' M'),
    MyItem(tag: '189P-021 A/S', details: 'FOLS Pump-A', capacity:'15 LPM', power: '0.65 KW', flc: '1.8 Amp', head: ' M'),
    MyItem(tag: '189P-022 A/S', details: 'FOLS Pump-B', capacity:'15 LPM', power: '0.65 KW', flc: '1.8 Amp', head: ' M'),
    MyItem(tag: '189P-023 A/S', details: 'FOLS Pump-C', capacity:'15 LPM', power: '0.65 KW', flc: '1.8 Amp', head: ' M'),
    MyItem(tag: '189P-024 A/S', details: 'FOLS Pump-S', capacity:'15 LPM', power: '0.65 KW', flc: '1.8 Amp', head: ' M'),
    MyItem(tag: '189P-071 A/S', details: 'Acid unloading/transfer pumps', capacity:'5 M3/Hr', power: '2.2 KW', flc: '4.55 Amp', head: ' M'),
    MyItem(tag: '189P-072 A/S', details: 'Acid dosing pump', capacity:'200 LPH', power: '0.37 KW', flc: '1.02 Amp', head: ' M'),
    MyItem(tag: '189P-073 A/S', details: 'Solution transfer pump', capacity:'5 M3/Hr', power: '2.2 KW', flc: '4.36 Amp', head: ' M'),
    MyItem(tag: '189P-074 A/B/S', details: '74A(Soda) & 74B/S (Calcium)', capacity:'200 LPH', power: '0.37 KW', flc: '1.02 Amp', head: ' M'),
    MyItem(tag: '189MXM-071', details: 'Agitators for solution preparation Tank', capacity:'-', power: '1.1 KW', flc: '2.45 Amp', head: ' M'),
    MyItem(tag: '189AGT-01B', details: 'Caustic Tank Agitator', capacity:'-', power: '1.5 KW', flc: '3.34 Amp', head: ' M'),
    MyItem(tag: '189B-01B/02B', details: 'Chlorine Blower', capacity:'1500 M3/Hr', power: '3.7 KW', flc: '7.13 Amp', head: ' M'),
    MyItem(tag: '189K-102 A/B', details: 'Filter air blower', capacity:'453 M3/Hr', power: '7.5 KW', flc: '14.5 Amp', head: ' M'),
    MyItem(tag: '189CP-01B/02B', details: 'Caustic circulation Pump', capacity:'-', power: '3.7 KW', flc: '7.13 Amp', head: ' M'),



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