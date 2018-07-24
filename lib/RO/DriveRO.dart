import 'package:flutter/material.dart';


class DriveRO extends StatefulWidget {
  @override
  _DriveROState createState() => _DriveROState();
}

class MyItem {
  MyItem(
      {this.isExpanded: false, this.tag, this.details, this.capacity, this.power, this.flc, this.head,}
      );
  bool isExpanded; final String tag; final String details; final String capacity; final String power; final String flc; final String head;
}

class _DriveROState extends State<DriveRO> {
  List<MyItem> _items= <MyItem>[
    //Add Pump and Drives Details here
    MyItem(tag: '184P-101 A/B', details: '35% HCL Storage tank pump', capacity:'', power: '3.7 KW', flc: '7.13 Amp', head: ' M'),
    MyItem(tag: '184P-102 A/B', details: '35% HCL Storage tank pump', capacity:'', power: '3.7 KW', flc: '7.13 Amp', head: ' M'),
    MyItem(tag: '184P-501 A/B/C', details: 'DAF Recirculation pump', capacity:'54 M3/Hr', power: '18.5 KW', flc: '31.5 Amp', head: '60 M'),
    MyItem(tag: '184P-502 A/B', details: 'DAF oily waste disposal pump', capacity:'14 M3/Hr', power: '11 KW', flc: '19.3 Amp', head: '80 M'),
    MyItem(tag: '184P-503 A/B/C', details: 'Clarified water feed pump for DMF', capacity:'280 M3/Hr', power: '55 KW', flc: '94 Amp', head: '45 M'),
    MyItem(tag: '184P-504 A/B', details: 'UF RO chemical cleaning waste disposal pump', capacity:'20 M3/Hr', power: '5.5 KW', flc: '10 Amp', head: '40 M'),
    MyItem(tag: '184P-505 A/B/C', details: 'Cartridge filter feed pump RO-1', capacity:'248.5 M3/Hr', power: '55 KW', flc: '91 Amp', head: '52 M'),
    MyItem(tag: '184P-506 A/B', details: 'UF Back wash pump', capacity:'1120 M3/Hr', power: '110 KW', flc: '193 Amp', head: '25 M'),
    MyItem(tag: '184P-507 A/B', details: 'UF CEB 1A Dosing pump', capacity:'0-1700 LPH', power: '1.1 KW', flc: '2.45 Amp', head: ' M'),
    MyItem(tag: '184P-508 A/B', details: 'UF CEB 1A Dosing pump', capacity:'0-1700 LPH', power: '1.1 KW', flc: '2.45 Amp', head: ' M'),
    MyItem(tag: '184P-509 A/B', details: 'UF CEB 1A Dosing pump', capacity:'0-1700 LPH', power: '1.1 KW', flc: '2.44 Amp', head: ' M'),
    MyItem(tag: '184P-510 A/B/C', details: 'RO 1 High Pressure pump(stage 1&2 )', capacity:'', power: '150 KW', flc: '240 Amp', head: ' M'),
    MyItem(tag: '184P-511 A/B', details: 'Inter stage booster pump(stage 3 )', capacity:'', power: '22 KW', flc: '37.5 Amp', head: ' M'),
    MyItem(tag: '184P-512 A/B/C', details: 'RO CIP pump', capacity:'', power: '55 KW', flc: '94 Amp', head: ' M'),
    MyItem(tag: '184P-513 A/B', details: 'Cartridge filter feed pump RO-2', capacity:'', power: '45 KW', flc: '73.6 Amp', head: ' M'),
    MyItem(tag: '184P-514 A/B', details: 'DG pump for RO-1 CT', capacity:'', power: '45 KW', flc: '73.6 Amp', head: ' M'),
    MyItem(tag: '184P-515 A/B', details: 'DMF back wash pump', capacity:'', power: '45 KW', flc: '79.5 Amp', head: ' M'),
    MyItem(tag: '184P-516 A/B', details: 'RO-II High Pressure pumps', capacity:'', power: '150 KW', flc: '240 Amp', head: ' M'),
    MyItem(tag: '184P-517 A/B', details: 'Chlorine Booster pump', capacity:'', power: '0.75 KW', flc: '1.61 Amp', head: ' M'),
    MyItem(tag: '184P-518 A/B', details: 'MB FEED PUMP', capacity:'', power: '90 KW', flc: '147 Amp', head: ' M'),
    MyItem(tag: '184P-519 A/B', details: 'Effluent disposal pump', capacity:'', power: '11 KW', flc: '19.3 Amp', head: ' M'),
    MyItem(tag: '184P-520 A/B', details: 'Effluent recycle pump', capacity:'', power: '5.5 KW', flc: '10 Amp', head: ' M'),
    MyItem(tag: '184P-521 A/B', details: 'Dolomite dosing pump', capacity:'', power: '0.37 KW', flc: '1.02 Amp', head: ' M'),
    MyItem(tag: '184P-522 A', details: 'Lime dosing pump', capacity:'', power: '1.1 KW', flc: '2.45 Amp', head: ' M'),
    MyItem(tag: '184P-523 A/B', details: 'Ferric chloride dosing pump for DAF', capacity:'0-150 LPH', power: '0.37 KW', flc: '1.02 Amp', head: ' M'),
    MyItem(tag: '184P-524 A/B', details: 'DWPE dosing pump', capacity:'', power: '0.37 KW', flc: '1.02 Amp', head: ' M'),
    MyItem(tag: '184P-525 A/B', details: 'Ferric chloride dosing pump for UF', capacity:'0-20 LPH', power: '0.37 KW', flc: '1.02 Amp', head: ' M'),
    MyItem(tag: '184P-526 A/B', details: 'Polyelectrolyte dosing pump', capacity:'0-750 LPH', power: '0.75 KW', flc: '1.75 Amp', head: ' M'),
    MyItem(tag: '184P-527 A/B', details: 'Sludge transfer pump/monobelt filter press feed pump', capacity:'', power: '3.7 KW', flc: '7.3 Amp', head: ' M'),
    MyItem(tag: '184P-528 A/B', details: 'SMBS dosing pump', capacity:'0-20 LPH', power: '0.37 KW', flc: '1.02 Amp', head: ' M'),
    MyItem(tag: '184P-529 A/B', details: 'Antisealant dosing pump', capacity:'0-20 LPH', power: '0.37 KW', flc: '1.02 Amp', head: ' M'),
    MyItem(tag: '184P-530 A/B', details: 'Deoilingpolymer dosing pump', capacity:'0-350 LPH', power: '0.37 KW', flc: '1.02 Amp', head: ' M'),
    MyItem(tag: '184P-531 A/B', details: 'Soda ASH dosing pump', capacity:'0-25 LPH', power: '0.37 KW', flc: '1.02 Amp', head: ' M'),
    MyItem(tag: '184P-532 A/B', details: 'NaOH dosing pump', capacity:'0-20 LPH', power: '0.37 KW', flc: '1.02 Amp', head: ' M'),
    MyItem(tag: '184P-533 A/B', details: 'Acid dosing pump for RO-1', capacity:'0-100 LPH', power: '0.37 KW', flc: '1.02 Amp', head: ' M'),
    MyItem(tag: '184P-534 A/B', details: 'Acid dosing pump for Clarified water mixing ', capacity:'0-50 LPH', power: '0.37 KW', flc: '1.02 Amp', head: ' M'),
    MyItem(tag: '184P-535', details: 'Caustic recirculation pump', capacity:'', power: '0.75 KW', flc: '1.65 Amp', head: ' M'),
    MyItem(tag: '184P-536', details: 'Dewatering pump for effluent sump pump house', capacity:'', power: '2.2 KW', flc: '4.61 Amp', head: ' M'),
    MyItem(tag: '184K-501', details: 'DAF Air Compressor', capacity:'', power: '1.5 KW', flc: '3.3 Amp', head: ' M'),
    MyItem(tag: '184K-502 A/B', details: 'DMF Air Blower', capacity:'', power: '18.5 KW', flc: '33.2 Amp', head: ' M'),
    MyItem(tag: '184K-503-A/B/C', details: 'De-Gasser Air Blowers', capacity:'', power: '5.5 KW', flc: '10.4 Amp', head: ' M'),
    MyItem(tag: '184K-504-A/B', details: 'Air blower for clarifier/Effluent sump', capacity:'', power: '7.5 KW', flc: '14.58 Amp', head: ' M'),
    MyItem(tag: '184K-505', details: 'Air blower ', capacity:'', power: '1.5 KW', flc: '3.05 Amp', head: ' M'),
    MyItem(tag: '184MX-501 A/B', details: 'Flocculator', capacity:'', power: '0.75 KW', flc: '2 Amp', head: ' M'),
    MyItem(tag: '184MX-502 A', details: 'Flash mixer agitator', capacity:'', power: '1.5 KW', flc: '3.25 Amp', head: ' M'),
    MyItem(tag: '184MX-503 A/B', details: 'UF CEB 1C Dosing Tank agitator', capacity:'', power: '0.37 KW', flc: '1.01 Amp', head: ' M'),
    MyItem(tag: '184MX-504 A', details: 'RO CIP Tank agitator', capacity:'', power: '1.1 KW', flc: '2.45 Amp', head: ' M'),
    MyItem(tag: '184MX-505 A/B', details: 'Dolomite tank agitator', capacity:'', power: '0.75 KW', flc: '1.75 Amp', head: ' M'),
    MyItem(tag: '184MX-506 A/B', details: 'Lime Dosing tank agitator', capacity:'', power: '1.5 KW', flc: '3.25 Amp', head: ' M'),
    MyItem(tag: '184MX-507 A/B', details: 'Ferric chloride dosing tank agitator for DAF', capacity:'', power: '0.75 KW', flc: '1.75 Amp', head: ' M'),
    MyItem(tag: '184MX-508 A', details: 'DWPE dosing tank agitator', capacity:'', power: '0.37 KW', flc: '1.02 Amp', head: ' M'),
    MyItem(tag: '184MX-509 A/B', details: 'Polyelectrolyte dosing tank agitator', capacity:'', power: '1.5 KW', flc: '3.25 Amp', head: ' M'),
    MyItem(tag: '184MX-510 A/B', details: 'SMBS dosing tank agitator', capacity:'', power: '0.75 KW', flc: '2 Amp', head: ' M'),
    MyItem(tag: '184MX-511 A/B', details: 'Anti scalent dosing tank agitator', capacity:'', power: '0.37 KW', flc: '1.1 Amp', head: ' M'),
    MyItem(tag: '184MX-512 A/B', details: 'Deoiling polymer dosing tank agitator ', capacity:'', power: '0.75 KW', flc: '1.75 Amp', head: ' M'),
    MyItem(tag: '184MX-513 A/B', details: 'Soda ASH dosing tank agitator', capacity:'', power: '0.75 KW', flc: '2 Amp', head: ' M'),
    MyItem(tag: '184MX-514 A/B', details: 'NaOH dosing tank agitator', capacity:'', power: '0.37 KW', flc: '1.1 Amp', head: ' M'),
    MyItem(tag: '184MX-552 A/B', details: 'HRSCC Mechanism for Recirculation', capacity:'', power: '1.5 KW', flc: '3.76 Amp', head: ' M'),
    MyItem(tag: '184TM-502 A/B', details: 'Skimmer motor for DAF', capacity:'', power: '0.75 KW', flc: '1.7 Amp', head: ' M'),

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