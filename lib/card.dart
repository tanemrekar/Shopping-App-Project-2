import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_app/card.dart';

import 'categories/Categories.dart';
import 'categories/Profile.dart';
import 'credentials/login.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
        "Cart",
        style: TextStyle(fontSize: 23),
      ),),
      drawer: Drawer(
          width: 300,
          child: ListView(children: <Widget>[
            ListTile(
              onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (BuildContext)=>profile()));
              },
              leading: const Icon(
                Icons.person,
                size: 30,
              ),
              title: const Text(
                "Profile",
                style: TextStyle(fontSize: 25),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Categories()));
              },
              leading: const Icon(
                Icons.home,
                size: 30,
              ),
              title: const Text(
                "Home",
                style: TextStyle(fontSize: 25),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const Cart()));
              },
              leading: const Icon(
                Icons.shopping_cart,
                size: 30,
              ),
              title: const Text(
                "Cart",
                style: TextStyle(fontSize: 25),
              ),
            ),
            ListTile(
              onTap: () {
                FirebaseAuth.instance.signOut().then((value) => Get.to(
                    const Login(),
                    transition: Transition.zoom,
                    duration: const Duration(seconds: 1)));
              },
              leading: const Icon(
                Icons.exit_to_app,
                size: 30,
              ),
              title: const Text(
                "Logout",
                style: TextStyle(fontSize: 25),
              ),
            )
          ])),
      body: Column(
        children: [
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
                  child: const Text("+",style: TextStyle(
                      fontSize: 22
                  ),)),
              // IconButton(onPressed: (){
              // }, icon: const Icon(Icons.add_circle,size: 30,)),
            ],
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
                "HP",
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
                  child: const Text("+",style: TextStyle(
                    fontSize: 22
                  ),)),
              OutlinedButton(onPressed: (){},
                  child: Text("check out")),
              OutlinedButton(onPressed: (){
                //Navigator.push(context, MaterialPageRoute(builder: (context)=>))
                //Navigator.push(context, MaterialPageRoute(builder: (context)=>))
              },
                  child: Text("back")),

              // IconButton(onPressed: (){
              // }, icon: const Icon(Icons.add_circle,size: 30,)),
            ],
          ),
        ],
      ),
    );
  }
}
