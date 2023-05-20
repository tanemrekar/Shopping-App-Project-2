import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Iphone extends StatefulWidget {
  const Iphone({Key? key}) : super(key: key);

  @override
  State<Iphone> createState() => _IphoneState();
}

List<Map<String, dynamic>> acc = [
  {'image': 'assets/img_14.png'},
  {'price': '\$100'},
  {'name': 'Samsung'}
];

class _IphoneState extends State<Iphone> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Phones"),
      ),
      body: ListView.builder(
          itemCount: 1,
          itemBuilder: (_, int index) {
            return phoneCategotires();
          }),
    ));
  }
}

class phoneCategotires extends StatefulWidget {
  const phoneCategotires({Key? key}) : super(key: key);

  @override
  State<phoneCategotires> createState() => _phoneCategotiresState();
}

int counter = 0;

class _phoneCategotiresState extends State<phoneCategotires> {
  void increment() {
    counter++;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const CircleAvatar(
                  radius: 70,
                  child: Image(
                    image: AssetImage("assets/img.png"),
                  )),

              const Text(
                "samsung",
                style: TextStyle(fontSize: 25),
              ),
              const Text(
                "69.99€",
                style: TextStyle(fontSize: 25),
              ),
              OutlinedButton(
                  onPressed: () {
                    setState(() {});
                  },
                  child: Text("Add")),
              // IconButton(onPressed: (){
              // }, icon: const Icon(Icons.add_circle,size: 30,)),
            ],
          ),
          const SizedBox(
            height: 7,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const CircleAvatar(
                  radius: 70,
                  child: Image(
                    image: AssetImage("assets/img_1.png"),
                  )),

              const Text(
                "Xiaomi",
                style: TextStyle(fontSize: 25),
              ),
              const Text(
                "49.99€",
                style: TextStyle(fontSize: 25),
              ),
              OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {},
                  child: Text("Add")),
              // IconButton(onPressed: (){
              // }, icon: const Icon(Icons.add_circle,size: 30,)),
            ],
          ),
          const SizedBox(
            height: 7,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                  radius: 70,
                  child: Image(
                    image: AssetImage("assets/img_2.png"),
                  )),

              const Text(
                "huawei",
                style: TextStyle(fontSize: 25),
              ),
              const Text(
                "39.99€",
                style: TextStyle(fontSize: 25),
              ),
              OutlinedButton(onPressed: () {}, child: Text("Add")),
              // IconButton(onPressed: (){
              // }, icon: const Icon(Icons.add_circle,size: 30,)),
            ],
          ),
        ],
      ),
    );
    ;
  }
}
