import 'package:flutter/material.dart';


class DriveDesal extends StatefulWidget {
  @override
  _DriveDesalState createState() => _DriveDesalState();
}

class MyItem {
  MyItem(
      {this.isExpanded: false, this.tag, this.details, this.capacity, this.power, this.flc, this.head,}
      );
  bool isExpanded;
  final String tag;
  final String details;
  final String capacity;
  final String power;
  final String flc;
  final String head;
}

class _DriveDesalState extends State<DriveDesal> {
  List<MyItem> _items= <MyItem>[
    //Add Pump and Drives Details here
    MyItem(tag: '182P-001 A/B', details: 'Feed Pump', capacity:'1300 M3/hr', power: '160 KW', flc: '281 Amp', head: '0 M'),
    MyItem(tag: '182P-022 A/B', details: 'Intermediate Pump-A', capacity:'1150 M3/hr', power: '132 KW', flc: '227 Amp', head: '0 M'),
    MyItem(tag: '182P-023 A/B', details: 'Intermediate Pump-B', capacity:'1020 M3/hr', power: '132 KW', flc: '227 Amp', head: '0 M'),
    MyItem(tag: '182P-004 A/B', details: 'Brine Pump', capacity:'1000 M3/hr', power: '250 KW', flc: '27 Amp', head: '0 M'),
    MyItem(tag: '182P-005', details: 'LP Condensate Pump', capacity:'137 M3/hr', power: '55 KW', flc: '91 Amp', head: '0 M'),
    MyItem(tag: '182P-006 A/B', details: 'Product Pump', capacity:'550 M3/hr', power: '200 KW', flc: '23 Amp', head: '0 M'),
    MyItem(tag: '182P-007 A/B', details: 'Mechanical Seal Pump', capacity:'10 M3/hr', power: '5.5 KW', flc: '9.9 Amp', head: '0 M'),
    MyItem(tag: '182P-008 A/B', details: 'Feed Treatment Dosing Pump (Anti Scalant)', capacity:'- M3/hr', power: '- KW', flc: '- Amp', head: '- M'),
    MyItem(tag: '182P-009 A/B', details: 'Anti Foam Dosing Pump', capacity:'- M3/hr', power: '- KW', flc: '- Amp', head: '- M'),
    MyItem(tag: '182P-011', details: 'Acid Cleaning Pump', capacity:'5 M3/hr', power: '2.2 KW', flc: '4.5 Amp', head: '0 M'),
    MyItem(tag: '182P-012', details: 'NCG Circulation Pump', capacity:'200 M3/hr', power: '45 KW', flc: '75 Amp', head: '0 M'),
    MyItem(tag: '182P-013 ', details: 'Anti Foam Circulation Pump', capacity:'5 M3/hr', power: '0.25 KW', flc: '1.1 Amp', head: '0 M'),
    MyItem(tag: '182MX-001', details: 'Acid Cleaning Mixer', capacity:'- M3/hr', power: '1.5 KW', flc: '3.45 Amp', head: '- M'),
    MyItem(tag: '182P-101 A/B', details: 'Feed Pump', capacity:'1300 M3/hr', power: '160 KW', flc: '281 Amp', head: '0 M'),
    MyItem(tag: '182P-122 A/B', details: 'Intermediate Pump-A', capacity:'1150 M3/hr', power: '132 KW', flc: '227 Amp', head: '0 M'),
    MyItem(tag: '182P-123 A/B', details: 'Intermediate Pump-B', capacity:'1020 M3/hr', power: '132 KW', flc: '227 Amp', head: '0 M'),
    MyItem(tag: '182P-104 A/B', details: 'Brine Pump', capacity:'1000 M3/hr', power: '250 KW', flc: '27 Amp', head: '0 M'),
    MyItem(tag: '182P-105', details: 'LP Condensate Pump', capacity:'137 M3/hr', power: '55 KW', flc: '91 Amp', head: '0 M'),
    MyItem(tag: '182P-106 A/B', details: 'Product Pump', capacity:'550 M3/hr', power: '200 KW', flc: '23 Amp', head: '0 M'),
    MyItem(tag: '182P-107 A/B', details: 'Mechanical Seal Pump', capacity:'10 M3/hr', power: '5.5 KW', flc: '9.9 Amp', head: '0 M'),
    MyItem(tag: '182P-108 A/B', details: 'Feed Treatment Dosing Pump (Anti Scalant)', capacity:'- M3/hr', power: '- KW', flc: '- Amp', head: '- M'),
    MyItem(tag: '182P-109 A/B', details: 'Anti Foam Dosing Pump', capacity:'- M3/hr', power: '- KW', flc: '- Amp', head: '- M'),
    MyItem(tag: '182P-111', details: 'Acid Cleaning Pump', capacity:'5 M3/hr', power: '2.2 KW', flc: '4.5 Amp', head: '0 M'),
    MyItem(tag: '182P-112', details: 'NCG Circulation Pump', capacity:'200 M3/hr', power: '45 KW', flc: '75 Amp', head: '0 M'),
    MyItem(tag: '182P-113 ', details: 'Anti Foam Circulation Pump', capacity:'5 M3/hr', power: '0.25 KW', flc: '1.1 Amp', head: '0 M'),
    MyItem(tag: '182MX-101', details: 'Acid Cleaning Mixer', capacity:'- M3/hr', power: '1.5 KW', flc: '3.45 Amp', head: '- M'),

    MyItem(tag: '182P-112 A/B/S', details: 'Salaya Water Transfer Pump', capacity:'350 M3/hr', power: '180 KW', flc: '20.6 Amp', head: '0 M'),
    MyItem(tag: '182P-113 A/B/S', details: 'DM Feed Pump', capacity:'500 M3/hr', power: '260 KW', flc: '29.1 Amp', head: '0 M'),
    MyItem(tag: '182P-116 A/B/S ', details: ' CT Makeup Pump', capacity:'750 M3/hr', power: '160 KW', flc: '268 Amp', head: '0 M'),

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