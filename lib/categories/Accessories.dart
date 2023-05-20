import 'package:flutter/material.dart';

class SmartWatches extends StatefulWidget {
  const SmartWatches({Key? key}) : super(key: key);

  @override
  State<SmartWatches> createState() => _SmartWatchesState();
}

List <Map<String,dynamic>> _product =[
  { "name": 'Wireless Headset Red',
    "price": '\$100',
    'image': 'assets/img.png',},
  { "name": 'Surround RGB Light Effect Gaming \n Gaming Headset with Microphone',
    "price": '\$100',
    'image': 'assets/img_1.png',},
  { "name": 'LED Backlight Gaming Headset \n with Microphone',
    "price": '\$100',
    "image": 'assets/img_2.png',},
  { "name": 'Bass Wireless Bluetooth \n Headphones '
      '5.0+Edr Fm Radio Green',
    "price": '\$100',
    "image": 'assets/img_3.png'},
  { "name": 'Wireless Gaming Headset',
    "price": '\$100',
    "image": 'assets/img_4.png'},
  { "name": 'On-Ear Gaming Headset',
    "price": '\$100',
    "image": 'assets/img_5.png'},
  {"name": 'Carbon Wireless Premium \n  Headphones,',
    "price": '\$100',
    "image": 'assets/img_6.png'},
  {  "name": 'Extra Bass Wireless \n Headphones',
    "price": '\$100',
    "image": 'assets/img_7.png'},
  { "name": 'Cat Headset Bluetooth \n 5.0 Headset ,',
    "price": '\$100',
    "image": 'assets/img_8.png'},
  { "name": 'wireless Wireless Gaming \n Headset',
    "price": '\$100',
    "image": 'assets/img_9.png'},
  { "name": 'Wired/wireless Compatible \n Headphone Microphone',
    "price": '\$100',
    "image": 'assets/img_10.png'},
  { "name": 'LIGHTSPEED Wireless Illuminated \n Gaming Headset - White",',
    "price": '\$100',
    "image": 'assets/img_11.png'},
  {"name": 'Wireless Gaming Headset White",',
    "price": '\$100',
    "image": 'assets/img_12.png'},
  { "name": 'Lightspeed Wireless RGB Gaming \n Headset Blue",',
    "price": '\$100',
    "image": 'assets/img_13.png'},
  {  "name": 'Wireless Bluetooth Headset with\n  On-Ear Microphone",',
    "price": '\$100',
    "image": 'assets/img_14.png'},
  { "name": '-Ear Bluetooth Headphones"',
    "price": '\$100',
    "image": 'assets/img_15.png'},
];


class _SmartWatchesState extends State<SmartWatches> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("SmartWatches"),
          ),

      ) );
  }
}

