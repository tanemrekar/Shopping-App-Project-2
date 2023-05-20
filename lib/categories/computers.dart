import 'package:flutter/material.dart' hide Badge;

class Android extends StatefulWidget {
  const Android({Key? key}) : super(key: key);

  @override
  State<Android> createState() => _AndroidState();
}

List<Map<String, dynamic>> acc = [
  {'image': 'assets/img_14.png'},
  {'price': '\$100'},
  {'name': 'Samsung'}
];

class _AndroidState extends State<Android> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Computers"),
      ),
      body: ListView.builder(
          itemCount: 1,
          itemBuilder: (_, int index) {
            return const phoneCategotires();
          }),
    ));
  }
}

class phoneCategotires extends StatelessWidget {
  final productImage;
  final producPrice;
  final productName;
  const phoneCategotires(
      {Key? key, this.productImage, this.producPrice, this.productName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const CircleAvatar(
                  radius: 70,
                  child: Image(
                    image: AssetImage("assets/img_3.png"),
                  )),

              const Text(
                "Razer",
                style: TextStyle(fontSize: 25),
              ),
              const Text(
                "699€",
                style: TextStyle(fontSize: 25),
              ),
              OutlinedButton(onPressed: () {}, child: const Text("Add")),
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
                    image: AssetImage("assets/img_4.png"),
                  )),

              const Text(
                "Monster",
                style: TextStyle(fontSize: 25),
              ),
              const Text(
                "499€",
                style: TextStyle(fontSize: 25),
              ),
              OutlinedButton(onPressed: () {}, child: const Text("Add")),
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
                    image: AssetImage("assets/img_5.png"),
                  )),

              const Text(
                "Apple",
                style: TextStyle(fontSize: 25),
              ),
              const Text(
                "399€",
                style: TextStyle(fontSize: 25),
              ),
              OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {},
                  child: const Text("Add")),

              // IconButton(onPressed: (){
              // }, icon: const Icon(Icons.add_circle,size: 30,)),
            ],
          ),
        ],
      ),
    );
  }
}
