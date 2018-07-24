import 'package:flutter/material.dart';

class DriveDetails {
  DriveDetails(
      this.tag, this.details, this.parameter);
  final String tag;
  final String details;
  final String parameter;

}

class OperationParamDesal extends StatefulWidget {
  @override
  _OperationParamDesalState createState() => _OperationParamDesalState();
}

class DriveListTile extends ExpansionTile {
  DriveListTile(DriveDetails drivedetails)
      : super(
      leading: new CircleAvatar(child: Text("${drivedetails.tag[3]}"+"${drivedetails.tag[4]}"),),
      title: new Container(
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Padding(
               padding: const EdgeInsets.only(left: 5.0, right: 10.0),
               child: Text(drivedetails.tag, style: new TextStyle(fontSize: 15.0, color: Colors.blue),),
             ),
            new Expanded(
              child: Text(drivedetails.details, style: new TextStyle(fontSize: 15.0,), softWrap: true,),
            ),
          ],
        ),
      ),
      children: <Widget>[
        new Container(
          child: new Column(
            children: <Widget>[
              new Row(
                children: <Widget>[
                   new Container(
                      padding: const EdgeInsets.only(bottom: 10.0, left: 80.0),
                      child: Text('Operating Parameter: ', style: TextStyle( color: Colors.redAccent),),
                    ),
                   new Container(
                      padding: const EdgeInsets.only(bottom: 10.0, left: 20.0),
                      child: Text(drivedetails.parameter),
                    ),

                ],
              ),
            ],
          ),
        ),
      ]);
}

class _OperationParamDesalState extends State<OperationParamDesal> {
  List<DriveDetails> drive = [
    //add your equipment details here
    DriveDetails('182TI-0901', 'Brine out from Effect No. 1', '71.0°C'),
    DriveDetails('182TI-0902', 'Brine out from Effect No. 2', '67.4°C'),
    DriveDetails('182TI-0903', 'Brine out from Effect No. 3', '64.8°C'),
    DriveDetails('182TI-0904', 'Brine out from Effect No. 4', '62.3°C'),
    DriveDetails('182TI-0905', 'Brine out from Effect No.5', '59.9°C'),
    DriveDetails('182TI-0906', 'Brine out from Effect No. 6', '57.6°C'),
    DriveDetails('182TI-0907', 'Brine out from Effect No. 7', '54.7°C'),
    DriveDetails('182TI-0908', 'Brine out from Effect No. 8', '51.3°C'),
    DriveDetails('182TI-0909', 'Brine out from Effect No. 9', '50.0°C'),
    DriveDetails('182TI-0910', 'Brine out from Effect No.10', '48.2°C'),
    DriveDetails('182TI-0911', 'Brine out from Effect No.11', '46.3°C'),
    DriveDetails('182TI-0912', 'L.P. Steam to Ejector', '190.0°C (max)'),
    DriveDetails('182TI-0914', 'Vapor into 1st Effect', '72°C'),
    DriveDetails('182TI-0915', 'Condensate Out', '71.0°C'),
    DriveDetails('182TI-0916', 'Feed Pump Discharge', '43.6°C'),
    DriveDetails('182TI-0917', 'Feed Pump Discharge', '43.6°C'),

    DriveDetails('182FI-0912A', 'Feed to 1st Effect', '600 m3/hr'),
    DriveDetails('182FI-0912B', 'Feed to 1st Effect', '600 m3/hr'),
    DriveDetails('182FI-0923', 'Feed to 2nd Effect', '600 m3/hr'),
    DriveDetails('182FI-0923', 'Feed to 3rd Effect', '600 m3/hr'),
    DriveDetails('182FI-0924', 'Feed to 4th Effect', '690 m3/hr'),
    DriveDetails('182FI-0924', 'Feed to 5th Effect', '690 m3/hr'),
    DriveDetails('182FI-0924', 'Feed to 6th Effect', '690 m3/hr'),
    DriveDetails('182FI-0925', 'Feed to 7th Effect', '480 m3/hr'),
    DriveDetails('182FI-0925', 'Feed to 8th Effect', '480 m3/hr'),
    DriveDetails('182FI-0925', 'Feed to 9th Effect', '480 m3/hr'),
    DriveDetails('182FI-0925', 'Feed to 10th Effect', '480 m3/hr'),
    DriveDetails('182FI-0925', 'Feed to 11th Effect', '480 m3/hr'),
    DriveDetails('182FI-0927', 'De-superheating', '110 lit/min'),
    DriveDetails('182FI-0926', 'Condensate Pump Discharge ', '138 m3/hr'),
    DriveDetails('182FI-0928', 'Product Pumps Discharge ', '950 m3/hr'),
    DriveDetails('182FI-0929A', 'Seawater to Top condenser stack', '1,000 m3/hr'),
    DriveDetails('182FI-0929B', 'Seawater to Bottom Condenser stack', '1,400 m3/hr'),
    DriveDetails('182FI-0929C', 'Seawater to condenser', '2400 m3/hr'),
    DriveDetails('182FI-0930', 'Coolant from Cooling Tower ', '1,400 m3/hr'),
    DriveDetails('182FI-0931', 'Coolant Water to NCG Condensers', '160 m3/hr'),
    DriveDetails('182FI-0935', 'Coolant Water to Condensers 182E-008', ' 30 m3/hr'),
    DriveDetails('182FI-0935', 'Coolant Water to Condensers 182E-007', ' 30 m3/hr'),
    DriveDetails('182FI-0935', 'Coolant Water to Condensers 182E-006', ' 100 m3/hr'),
    DriveDetails('182FT-0941', 'Circulating through Mechanical Seals', '180 lit/min'),
    DriveDetails('182FI-0942', 'Brine Pump Discharge', '1,380 m3/hr'),

  ];

  TextEditingController searchController = new TextEditingController();
  String filter;

  // Builder for Body
  Widget _buildContent() {
    return ListView.builder(
      itemCount: drive.length,
      itemBuilder: (BuildContext content, int index) {
        DriveDetails drivedetails = drive[index];
//        return filter == null || filter == ""
//          ? new DriveListTile(drivedetails)
//          : drivedetails.contains(filter)
//            ? new DriveListTile(drive[index]): new ListTile();
        return DriveListTile(drivedetails);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: 50.0,
            child: new TextField(
              enabled: false,
              controller: searchController,
              style: new TextStyle(color: Colors.white,),
              decoration: new InputDecoration(
                  suffixIcon: new IconButton(icon: Icon(Icons.close,color: Colors.white), onPressed: _searchBar,),
                  prefixIcon: new Icon(Icons.search,color: Colors.white),
                  hintText: "Search...",
                  hintStyle: new TextStyle(color: Colors.white)

              ),
            ),
          ),
          new Expanded(
              child: _buildContent(),
          ),
        ],

      ),
      floatingActionButton: new FloatingActionButton(child: new Icon(Icons.search),onPressed: null),
    );
  }

  _searchBar(){
    setState(() {

    });
    searchController.clear();
  }
}
