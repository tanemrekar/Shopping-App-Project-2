import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeadPhones extends StatefulWidget {
  const HeadPhones({Key? key}) : super(key: key);

  @override
  State<HeadPhones> createState() => _HeadPhonesState();
}

class _HeadPhonesState extends State<HeadPhones> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Headpphones"),
        ),
      ),
    );
  }
}
