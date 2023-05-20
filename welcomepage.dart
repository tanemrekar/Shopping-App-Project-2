import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/categories/Categories.dart';
import 'package:shopping_app/categories/Profile.dart';
import 'package:shopping_app/categories/computers.dart';

import 'categories/card.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

List pages = [
  const Categories(),
  const profile(),
  const Cart(),
  const Android(),

];
int currentIndex = 0;
GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

       bottomNavigationBar:  CurvedNavigationBar(
         index: currentIndex,
         animationCurve: Curves.bounceInOut,
         key: _bottomNavigationKey,
         buttonBackgroundColor: Colors.white,
         color:Colors.white,
         onTap: (index){
           setState(() {
             currentIndex=index;
           });
         },
         animationDuration: const Duration(milliseconds: 500),
         items:const [
           CurvedNavigationBarItem(
               child: Icon(Icons.home),label: "Home",
               labelStyle: TextStyle(
                 fontSize: 22,
               )),
           CurvedNavigationBarItem(
               child: Icon(Icons.person),label: "profile",
               labelStyle: TextStyle(
                 fontSize: 22,
               )),
           CurvedNavigationBarItem(
               child: Icon(Icons.shopping_cart_outlined),label: "card",
               labelStyle: TextStyle(
                 fontSize: 22,
               )),
         ],
       ),
          body: pages[currentIndex]
    );
  }
}
