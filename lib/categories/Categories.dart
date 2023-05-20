import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_app/categories/computers.dart';
import 'package:shopping_app/categories/phones.dart';
import 'package:shopping_app/categories/Accessories.dart';
import 'package:shopping_app/credentials/login.dart';
import 'profile.dart';
import 'keyboard.dart';
import 'package:shopping_app/card.dart';

class Categories extends StatefulWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                Navigator.push(context,MaterialPageRoute(builder: (context)=> Cart()));

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
          "Categories",
          style: TextStyle(fontSize: 23),
        ),
      ),
      body: GridView(
          padding: const EdgeInsets.all(10),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 20, crossAxisSpacing: 10, crossAxisCount: 2),
          children: [
            InkWell(
              onTap: () {
                Get.to(const Android(),
                    transition: Transition.zoom,
                    duration: const Duration(seconds: 1));
              },
              child: Container(
                height: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                          blurRadius: 3.0,
                          spreadRadius: 2,
                          offset: Offset(0, 0),
                          color: Colors.grey)
                    ]),
                child: const Center(
                  child: Text(
                    "computer",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(const Iphone(),
                    transition: Transition.zoom,
                    duration: const Duration(seconds: 1));
              },
              child: Container(
                height: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                          blurRadius: 3.0,
                          spreadRadius: 2,
                          offset: Offset(0, 0),
                          color: Colors.grey)
                    ]),
                child: const Center(
                  child: Text(
                    "phones",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(const SmartWatches(),
                    transition: Transition.zoom,
                    duration: const Duration(seconds: 1));
              },
              child: Container(
                height: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                          blurRadius: 3.0,
                          spreadRadius: 2,
                          offset: Offset(0, 0),
                          color: Colors.grey)
                    ]),
                child: const Center(
                  child: Text(
                    "keyboard",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(const HeadPhones(),
                    transition: Transition.zoom,
                    duration: const Duration(seconds: 1));
              },
              child: Container(
                height: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                          blurRadius: 3.0,
                          spreadRadius: 2,
                          offset: Offset(0, 0),
                          color: Colors.grey)
                    ]),
                child: const Center(
                  child: Text(
                    "Accessories",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                    ),
                  ),
                ),
              ),
            ),
          ]),
    );
  }
}
