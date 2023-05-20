import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_app/credentials/login.dart';
import 'package:shopping_app/card.dart';

import 'Categories.dart';

class profile extends StatefulWidget {
  const profile({
    Key? key,
  }) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          width: 300,
          child: ListView(children: <Widget>[
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext) => profile()));
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Categories()));
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
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Cart()));
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
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Profile",
          style: TextStyle(fontSize: 23),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Container(
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 2,
                      color: Colors.grey,
                      spreadRadius: 2,
                    )
                  ], borderRadius: BorderRadius.circular(15)),
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text("Ahmad Jabari",style: TextStyle(
                      fontSize: 24)), Text("210218337",style: TextStyle(
                      fontSize: 24))],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 2,
                      color: Colors.grey,
                      spreadRadius: 2,
                    )
                  ], borderRadius: BorderRadius.circular(15)),
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text("Mert Eren Dilsiz",style: TextStyle(
                      fontSize: 24)), Text("200218033",style: TextStyle(
                      fontSize: 24))],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 2,
                      color: Colors.grey,
                      spreadRadius: 2,
                    )
                  ], borderRadius: BorderRadius.circular(15)),
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(" Tan Emre Kar ",style: TextStyle(
                      fontSize: 24
                  ),), Text("220218500",style: TextStyle(
                      fontSize: 24
                  ),)],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 2,
                      color: Colors.grey,
                      spreadRadius: 2,
                    )
                  ], borderRadius: BorderRadius.circular(15)),
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text("Faruk Abdullahi",style: TextStyle(
                    fontSize: 24
                  ),), Text("210218333",style: TextStyle(
                      fontSize: 24
                  ),)],
              ),
            ),
          ],
        ),
      )
    );
  }
}
