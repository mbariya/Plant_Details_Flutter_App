import 'package:flutter/material.dart';


class DriveWWTP extends StatefulWidget {
  @override
  _DriveWWTPState createState() => _DriveWWTPState();
}

class MyItem {
  MyItem(
      {this.isExpanded: false, this.tag, this.details, this.capacity, this.power, this.flc, this.head,}
      );
  bool isExpanded; final String tag; final String details; final String capacity; final String power; final String flc; final String head;
}

class _DriveWWTPState extends State<DriveWWTP> {
  List<MyItem> _items= <MyItem>[
    //Add Pump and Drives Details here
    MyItem(tag: '184P-103 A/B/S', details: 'API Inlet basin -Pumps ', capacity:'375 M3/Hr', power: '30 KW', flc: '53 Amp', head: '18 M'),
    MyItem(tag: '184P-104 A/B', details: 'Dewatering pump- Miscellaneous', capacity:'10 M3/Hr', power: '1.2 KW', flc: '2.7 Amp', head: '10 M'),
    MyItem(tag: '184P-105 A/S', details: 'AOC/COC - Guard Pond Pumps', capacity:'250 M3/Hr', power: '15 KW', flc: '27.3 Amp', head: '15 M'),
    MyItem(tag: '184P-106 A/S', details: 'Guard Pond Sludge Pumps', capacity:'10 M3/Hr', power: '1.5 KW', flc: '3.4 Amp', head: '15 M'),
    MyItem(tag: '184P-107 A/B/S', details: 'DAF Recycle Pumps', capacity:'100 M3/Hr', power: '30 KW', flc: '53 Amp', head: '65 M'),
    MyItem(tag: '184P-108 A/S', details: 'DAF Oil/Sludge Pumps', capacity:'15 M3/Hr', power: '1.5 KW', flc: '3.4 Amp', head: '10 M'),
    MyItem(tag: '184P-109 A/S', details: 'Equalisation Basin Transfer pumps', capacity:'750 M3/Hr', power: '55 KW', flc: '97.4 Amp', head: '17 M'),
    MyItem(tag: '184P-110 A/B/S', details: 'Bio-Tower Feed Pumps-AOC/COC Stream', capacity:'750 M3/Hr', power: '75 KW', flc: '128 Amp', head: '24 M'),
    MyItem(tag: '184P-111 A/B/C/S', details: 'Internal recirculation Pumps - AOC/COC Stream', capacity:'750 M3/Hr', power: '37 KW', flc: '65 Amp', head: '10 M'),
    MyItem(tag: '184P-112 A/B/S', details: 'Sludge Recirculation Pumps-AOC/COC Stream', capacity:'400 M3/Hr', power: '18.5 KW', flc: '33.5 Amp', head: '8 M'),
    MyItem(tag: '184P-113 A/B/S', details: 'Filter Feed Pumps - AOC/COC Stream', capacity:'375 M3/Hr', power: '45 KW', flc: '78 Amp', head: '29 M'),
    MyItem(tag: '184P-114 A/S', details: 'Service Water Pumps', capacity:'50 M3/Hr', power: '5.5 KW', flc: '10.7 Amp', head: '20 M'),
    MyItem(tag: '184P-115 A/B/C/S', details: 'Filter Backwash Water Pumps - Common', capacity:'300 M3/Hr', power: '30 KW', flc: '52.4 Amp', head: '24 M'),
    MyItem(tag: '184P-116 A/S', details: 'Dirty Backwash Water Transfer Pumps', capacity:'20 M3/Hr', power: '3.7 KW', flc: '7.5 Amp', head: '15 M'),
    MyItem(tag: '184P-117 A/B/S', details: 'Chlorine Booster Pumps', capacity:'4 M3/Hr', power: '1.1 KW', flc: '2.4 Amp', head: '25 M'),
    MyItem(tag: '184P-118 A/B/S', details: 'Treated Transfer Pumps - AOC/COC Stream', capacity:'375 M3/Hr', power: '125 KW', flc: '217 Amp', head: '78 M'),
    MyItem(tag: '184P-119 A/S', details: 'FeCl3 Dosing Pumps - DAF - AOC/COC', capacity:'200 LPH', power: '0.37 KW', flc: '1.1 Amp', head: '20 M'),
    MyItem(tag: '184P-120 A/S', details: 'DOPE Dosing Pumps - AOC/COC', capacity:'550 LPH', power: '0.75 KW', flc: '1.9 Amp', head: '20 M'),
    MyItem(tag: '184P-121 A/S', details: 'Polymer Dosing Pumps - DAF - AOC/COC', capacity:'900 LPH', power: '0.75 KW', flc: '1.9 Amp', head: '20 M'),
    MyItem(tag: '184P-122 A/S', details: 'Polymer Dosing Pumps - Sec. clarifier - AOC/COC', capacity:'900 LPH', power: '0.75 KW', flc: '1.9 Amp', head: '20 M'),
    MyItem(tag: '184P-123 A/B/S', details: 'Nutrient-I Dosing Pumps', capacity:'150 LPH', power: '0.37 KW', flc: '1.1 Amp', head: '20 M'),
    MyItem(tag: '184P-124 A/B/S', details: 'Nutrient-II Dosing Pumps', capacity:'100 LPH', power: '0.37 KW', flc: '1.1 Amp', head: '20 M'),
    MyItem(tag: '184P-125 A/S', details: 'Alkali dosing pumps - pH Adjust tank - AOC/COC', capacity:'50 - 350 LPH', power: '0.37 KW', flc: '1.1 Amp', head: '0 M'),
    MyItem(tag: '184P-127 A/S', details: 'Acid Unloading Pumps', capacity:'10 M3/Hr', power: '1.5 KW', flc: '3.4 Amp', head: '15 M'),
    MyItem(tag: '184P-128 A/S', details: 'Acid dosing pumps - DAF - AOC/COC', capacity:'20 M3/Hr', power: '0.37 KW', flc: '1.1 Amp', head: '20 M'),
    MyItem(tag: '184P-129 A/S', details: 'Acid dosing pumps - Pre Deoiler - AOC/COC', capacity:'20 LPH', power: '0.37 KW', flc: '1.1 Amp', head: '20 M'),
    MyItem(tag: '184P-130 A/S', details: 'Antifoaming agent Dosing Pumps - AOC/COC', capacity:'100 LPH', power: '0.37 KW', flc: '1.1 Amp', head: '20 M'),
    MyItem(tag: '184P-131 A/S', details: 'H2O2 Dosing Pumps - DAF - AOC/COC', capacity:'100 LPH', power: '0.37 KW', flc: '1.1 Amp', head: '20 M'),
    MyItem(tag: '184P-132 A/S', details: 'H2O2 Dosing Pumps - Clarifier - AOC/COC', capacity:'100 LPH', power: '0.37 KW', flc: '1.1 Amp', head: '20 M'),
    MyItem(tag: '184P-133 A/S', details: 'H2O2 Unloading Pumps', capacity:'10 M3/Hr', power: '1.5 KW', flc: '3.4 Amp', head: '15 M'),
    MyItem(tag: '184P-134 A/S', details: 'DWPE - Oily sludge Dosing Pumps', capacity:'450 LPH', power: '0.75 KW', flc: '1.9 Amp', head: '30 M'),
    MyItem(tag: '184P-135 A/S', details: 'DWPE - Bio sludgeDosing Pumps', capacity:'1300 LPH', power: '1.5 KW', flc: '3.4 Amp', head: '25 M'),
    MyItem(tag: '184P-136 A/S', details: 'Chemical Waste Transfer Pumps', capacity:'10 M3/Hr', power: '1.5 KW', flc: '3.4 Amp', head: '15 M'),
    MyItem(tag: '184P-140 A/S', details: 'Salt API feed pumps', capacity:'250 M3/Hr', power: '15 KW', flc: '27.3 Amp', head: '12 M'),
    MyItem(tag: '184P-141 A/S', details: 'Salt Stream Bypass Transfer Pumps', capacity:'250 M3/Hr', power: '30 KW', flc: '53 Amp', head: '26 M'),
    MyItem(tag: '184P-142 A/S', details: 'Salt Stream - Guard Pond Pumps', capacity:'250 M3/Hr', power: '15 KW', flc: '27.3 Amp', head: '15 M'),
    MyItem(tag: '184P-143 A/S', details: 'Guard Pond Sludge Pumps', capacity:'5 M3/Hr', power: '1.5 KW', flc: '3.4 Amp', head: '15 M'),
    MyItem(tag: '184P-144 A/S', details: 'DAF Recycle Pumps', capacity:'86 M3/Hr', power: '30 KW', flc: '53 Amp', head: '65 M'),
    MyItem(tag: '184P-146 A/S', details: 'Equalisation Basin Transfer pumps', capacity:'250 M3/Hr', power: '18.5 KW', flc: '33.9 Amp', head: '16 M'),
    MyItem(tag: '184P-147 A/B/S', details: 'Bio-Tower Feed Pumps-Salt Water', capacity:'250 M3/Hr', power: '22 KW', flc: '39 Amp', head: '23 M'),
    MyItem(tag: '184P-149 A/B/C/S', details: 'Internal recirculation Pumps - Salt Water', capacity:'250 M3/Hr', power: '11 KW', flc: '20.1 Amp', head: '10 M'),
    MyItem(tag: '184P-150 A/B/S', details: 'Sludge Recirculation Pumps-Salt Water', capacity:'135 M3/Hr', power: '7.5 KW', flc: '14.5 Amp', head: '10 M'),
    MyItem(tag: '184P-151 A/B/S', details: 'Filter Feed Pumps - Salt Water', capacity:'125 M3/Hr', power: '18.5 KW', flc: '33.5 Amp', head: '28 M'),
    MyItem(tag: '184P-152 A/S', details: 'Treated Transfer Pumps - Salt water', capacity:'250 M3/Hr', power: '90 KW', flc: '153 Amp', head: '79 M'),
    MyItem(tag: '184P-153 A/S', details: 'FeCl3 Dosing Pumps - DAF - Salt Stream', capacity:'50 LPH', power: '0.37 KW', flc: '1.1 Amp', head: '20 M'),
    MyItem(tag: '184P-154 A/S', details: 'DOPE Dosing Pumps - SALT', capacity:'200 LPH', power: '0.37 KW', flc: '0.95 Amp', head: '20 M'),
    MyItem(tag: '184P-155 A/S', details: 'Polymer Dosing Pumps - DAF - SALT', capacity:'350 LPH', power: '0.37 KW', flc: '1.1 Amp', head: '20 M'),
    MyItem(tag: '184P-156 A/S', details: 'Polymer Dosing Pumps - Sec. Clarifier - SALT', capacity:'350 LPH', power: '0.37 KW', flc: '1.1 Amp', head: '20 M'),
    MyItem(tag: '184P-158 A/S', details: 'Alkali dosing pumps - Aeration tank - SALT', capacity:'50 - 350 LPH', power: '0.37 KW', flc: '1.1 Amp', head: '0 M'),
    MyItem(tag: '184P-159 A/S', details: 'Acid dosing pumps - DAF - Salt', capacity:'20 LPH', power: '0.37 KW', flc: '1.1 Amp', head: '20 M'),
    MyItem(tag: '184P-160 A/S', details: 'Acid dosing pumps - Pre Deoiler Salt', capacity:'20 LPH', power: '0.37 KW', flc: '1.1 Amp', head: '20 M'),
    MyItem(tag: '184P-161 A/S', details: 'Antifoaming agent Dosing Pumps - SALT', capacity:'100 LPH', power: '0.37 KW', flc: '1.1 Amp', head: '20 M'),
    MyItem(tag: '184P-162 A/S', details: 'H2O2 Dosing Pumps - DAF - Salt', capacity:'100 LPH', power: '0.37 KW', flc: '1.1 Amp', head: '20 M'),
    MyItem(tag: '184P-163 A/S', details: 'H2O2 Dosing Pumps - Clarifier - Salt.', capacity:'50 LPH', power: '0.37 KW', flc: '1.1 Amp', head: '20 M'),
    MyItem(tag: '184P-164 A/S', details: 'Skimmed Oil Transfer pumps', capacity:'36 M3/Hr', power: '3.7 KW', flc: '7.5 Amp', head: '15 M'),
    MyItem(tag: '184P-165 A/S', details: 'Slop Oil Recirculation cum Transfer pumps', capacity:'120 M3/Hr', power: '75 KW', flc: '128 Amp', head: '92 M'),
    MyItem(tag: '184P-166 A/S', details: 'Common Oily Sludge Pumps', capacity:'22 M3/Hr', power: '7.5 KW', flc: '13.8 Amp', head: '15 M'),
    MyItem(tag: '184P-167 A/S', details: 'Thickened Oily Sludge Transfer Pumps-Centrifuge Feed', capacity:'20 M3/Hr', power: '7.5 KW', flc: '13.8 Amp', head: '20 M'),
    MyItem(tag: '184P-168 A/S', details: 'Supernatant / Drain Pumps', capacity:'140 M3/Hr', power: '15 KW', flc: '27.3 Amp', head: '20 M'),
    MyItem(tag: '184P-169 A/S', details: 'Bio-Sludge Thickener Feed Pumps', capacity:'28 M3/Hr', power: '2.2 KW', flc: '4.6 Amp', head: '10 M'),
    MyItem(tag: '184P-170 A/B/S', details: 'Thickened BioSludge Pumps', capacity:'11 M3/Hr', power: '3.7 KW', flc: '7.5 Amp', head: '20 M'),
    MyItem(tag: '184P-171 A/S', details: 'Belt Filtrate Transfer Pumps', capacity:'20 M3/Hr', power: '1.5 KW', flc: '3.4 Amp', head: '10 M'),
    MyItem(tag: '184P-172 A/S', details: 'Belt Filter Press - Wash Water Pumps', capacity:'15 M3/Hr', power: '3 KW', flc: '6.1 Amp', head: '70 M'),
    MyItem(tag: '184P-173 A/B/S', details: 'ETP Rain water Pumps', capacity:'250 M3/Hr', power: '15 KW', flc: '27.1 Amp', head: '15 M'),
    MyItem(tag: '184P-174 A', details: 'Dewatering Pump - AOC/COC Collection Pump House', capacity:'10 M3/Hr', power: '1.2 KW', flc: '2.7 Amp', head: '10 M'),
    MyItem(tag: '184P-174 B', details: 'Dewatering pump- Drain water pump House', capacity:'10 M3/Hr', power: '1.2 KW', flc: '2.7 Amp', head: '10 M'),
    MyItem(tag: '184P-174 C', details: 'Dewatering pump- Rain Water pump House', capacity:'10 M3/Hr', power: '1.2 KW', flc: '2.7 Amp', head: '10 M'),

    MyItem(tag: '184K-101 A/B/S', details: 'Equalisation Basin Air Blowers', capacity:'5400 M3/Hr', power: '132 KW', flc: '223 Amp', head: '5.5 M'),
    MyItem(tag: '184K-103 A/S', details: 'Equalisation Basin Air Blowers', capacity:'3600 M3/Hr', power: '90 KW', flc: '153 Amp', head: '5.5 M'),
    MyItem(tag: '184K-102 A/B/S', details: 'Blowers for Aeration Tank - AOC/COC Stream', capacity:'3400 Nm3/hr', power: '110 KW', flc: '190.5 Amp', head: '6.5 M'),
    MyItem(tag: '184K-104 A/B/S', details: 'Blowers for Aeration Tank - Salt water', capacity:'1750 Nm3/hr', power: '55 KW', flc: '96 Amp', head: '6.5 M'),
    MyItem(tag: '184K-105 A/B/C/S', details: 'Air Scour Blowers - Common for both DMF', capacity:'400 M3/Hr', power: '9.3 KW', flc: '17 Amp', head: '0.4 bar M'),
    MyItem(tag: '184K-106 A/S', details: 'Blowers for Chlorination system.', capacity:'500 M3/Hr', power: '1.5 KW', flc: '3.4 Amp', head: '100 M'),

    MyItem(tag: '184AD-103 A/B/C/D/E', details: 'API Mechanism', capacity:'750 M3/Hr', power: '0.75 KW', flc: '1.9 Amp', head: '- M'),
    MyItem(tag: '184AD-105', details: 'TPI Package -Sweet Water', capacity:'750M3/Hr', power: ' KW', flc: ' Amp', head: '- M'),
    MyItem(tag: '184AD-118A/B', details: 'API Mechanism', capacity:'250M3/Hr', power: '0.75 KW', flc: '1.9 Amp', head: '- M'),
    MyItem(tag: '184AD-120', details: 'TPI Oil Seperators', capacity:'250M3/Hr', power: ' KW', flc: ' Amp', head: '- M'),
    MyItem(tag: '184A-101A/B', details: 'Guard Pond Mechanism', capacity:'-', power: '2.2 KW', flc: '4.5 Amp', head: '- M'),
    MyItem(tag: '184A-102A/B', details: 'DAF Mechanism', capacity:'-', power: '0.75 KW', flc: '1.9 Amp', head: '- M'),
    MyItem(tag: '184A-105A/B', details: 'Guard Pond Mechanism', capacity:'-', power: '2.2 KW', flc: '4.5 Amp', head: '- M'),
    MyItem(tag: '184A-106', details: 'DAF Mechanism', capacity:'-', power: '0.75 KW', flc: '1.9 Amp', head: '- M'),
    MyItem(tag: '184A-103', details: 'Aeration Tank Diffusers - AOC/COC Stream', capacity:'-', power: '1.1 KW', flc: '2.5 Amp', head: '- M'),
    MyItem(tag: '184A-107', details: 'Aeration Tank Diffusers- salt water', capacity:'-', power: '1.1 KW', flc: '2.5 Amp', head: '- M'),
    MyItem(tag: '184A-104', details: 'Secondary Clarifier Mechanism - AOC/COC', capacity:'-', power: '1.1 KW', flc: '2.47 Amp', head: '- M'),
    MyItem(tag: '184A-108', details: 'Secondary Clarifier Mechanism - Salt water', capacity:'-', power: '0.75 KW', flc: '1.9 Amp', head: '- M'),
    MyItem(tag: '184A-109', details: 'Oily Sludge Thickener Mechanism', capacity:'-', power: '1.1 KW', flc: '2.5 Amp', head: '- M'),
    MyItem(tag: '184A-110', details: 'Bio-Sludge Thickener Mechanism', capacity:'-', power: '1.5 KW', flc: '3.4 Amp', head: '- M'),

    MyItem(tag: '184OS-101', details: 'Collection Basin Oil skimmer', capacity:'1000 LPH', power: '1.1 KW', flc: '2.5 Amp', head: '- M'),
    MyItem(tag: '184OS-106', details: 'Collection Basin Oil skimmer', capacity:'1000 LPH', power: '1.1 KW', flc: '2.5 Amp', head: '- M'),
    MyItem(tag: '184OS-104 A/B', details: 'Oil Skimmer - Guard Pond', capacity:'1000 LPH', power: '1.1 KW', flc: '2.5 Amp', head: '- M'),
    MyItem(tag: '184OS-105 A/B', details: 'Equalisation Basin - Oil Skimmer', capacity:'100 LPH', power: '0.37 KW', flc: '0.95 Amp', head: '- M'),
    MyItem(tag: '184OS-109 A/B', details: 'Oil Skimmer - Guard Pond', capacity:'1000 LPH', power: '1.1 KW', flc: '2.5 Amp', head: '- M'),
    MyItem(tag: '184OS-110 A/B', details: 'Equalisation Basin - Oil Skimmer', capacity:'100 LPH', power: '0.37 KW', flc: '0.95 Amp', head: '- M'),

    MyItem(tag: '184MX-101', details: 'pH Adjustment Tank - Agitator', capacity:'-', power: '5.5 KW', flc: '11.3 Amp', head: '- M'),
    MyItem(tag: '184MX-102', details: 'Flash Mixer', capacity:'-', power: '2.2 KW', flc: '4.5 Amp', head: '- M'),
    MyItem(tag: '184MX-103 A/B', details: 'Flocculator', capacity:'-', power: '5.5 KW', flc: '11.3 Amp', head: '- M'),
    MyItem(tag: '184MX-105', details: 'pH Adjustment Tank - Agitator', capacity:'-', power: '3.7 KW', flc: '7.5 Amp', head: '- M'),
    MyItem(tag: '184MX-106', details: 'Flash Mixer', capacity:'-', power: '1.5 KW', flc: '3.4 Amp', head: '- M'),
    MyItem(tag: '184MX-107', details: 'Flocculator', capacity:'-', power: '2.2 KW', flc: '4.5 Amp', head: '- M'),
    MyItem(tag: '184MX-104 A/B/C/D', details: 'Anoxic Tank Mixers - AOC/COC Stream', capacity:'-', power: '5.5 KW', flc: '10.7 Amp', head: '- M'),
    MyItem(tag: '184MX-108 A/B/C', details: 'Anoxic Tank Mixers - Salt water', capacity:'-', power: '3 KW', flc: '6.1 Amp', head: '- M'),
    MyItem(tag: '184MX-109', details: 'Thickened oily Sludge Sump - Agitator', capacity:'-', power: '2.2 KW', flc: '4.5 Amp', head: '- M'),
    MyItem(tag: '184MX-110', details: 'Bio-Sludge Sump - Agitator', capacity:'-', power: '5.5 KW', flc: '10.7 Amp', head: '- M'),
    MyItem(tag: '184MX-111', details: 'Thickened Bio-Sludge Sump - Agitator', capacity:'-', power: '5.5 KW', flc: '10.7 Amp', head: '- M'),
    MyItem(tag: '184MX-112 A/B', details: 'FeCl3 dosing tank - Agitator', capacity:'-', power: '1.5 KW', flc: '3.4 Amp', head: '- M'),
    MyItem(tag: '184MX-113 A/B', details: 'DOPE dosing tank - Agitator', capacity:'-', power: '2.2 KW', flc: '4.5 Amp', head: '- M'),
    MyItem(tag: '184MX-114 A/B', details: 'Polyelectrolyte dosing tank - Agitators', capacity:'-', power: '3.7 KW', flc: '7.5 Amp', head: '- M'),
    MyItem(tag: '184MX-115 A/B', details: 'Nutrient-I Solution dosing tank - Agitator', capacity:'-', power: '1.5 KW', flc: '3.4 Amp', head: '- M'),
    MyItem(tag: '184MX-116 A/B', details: 'Nutrient-II Solution dosing tank - Agitator', capacity:'-', power: '1.5 KW', flc: '3.4 Amp', head: '- M'),
    MyItem(tag: '184MX-117', details: 'Agitator - Alkali day Tank', capacity:'-', power: '2.2 KW', flc: '4.6 Amp', head: '- M'),
    MyItem(tag: '184MX-118 A/B', details: 'Agitator -Antifoaming agent Dosing Tank', capacity:'-', power: '1.5 KW', flc: '3.4 Amp', head: '- M'),
    MyItem(tag: '184MX-120 A/B', details: 'DWPE Oily sludge dosing tank - Agitator', capacity:'-', power: '1.5 KW', flc: '3.4 Amp', head: '- M'),
    MyItem(tag: '184MX-121 A/B', details: 'DWPE Bio sludge dosing tank - Agitator', capacity:'-', power: '1.5 KW', flc: '3.4 Amp', head: '- M'),

    MyItem(tag: '184FD-101 A/B/C/../j', details: 'Ventilation fans for Bio-tower - AOC/COC Stream', capacity:'7500 Nm3/hr', power: '3.7 KW', flc: '7.5 Amp', head: '- M'),
    MyItem(tag: '184FD-102 A/B/C/../F', details: 'Ventilation fans for Bio-tower - Salt water', capacity:'5000 Nm3/hr', power: '2.2 KW', flc: '4.6 Amp', head: '- M'),


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