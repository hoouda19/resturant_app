import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '/constant/constant.dart';
import '/moduels/cart_screen.dart';
import '/moduels/details_product.dart';
import '/moduels/home_screen.dart';
import '/moduels/shop_screen.dart';
 class HomeLayout extends StatefulWidget {
   @override
   _HomeLayoutState createState() => _HomeLayoutState();
 }

 class _HomeLayoutState extends State<HomeLayout> {
   int currentIndex=0;
   List<Widget> myScreens=[
     HomeScreen(),
     CartScreen(),
     ShopScreen(),
   ];
   @override
   Widget build(BuildContext context) {
     Size size=MediaQuery.of(context).size;
     return Scaffold(
       body: myScreens[currentIndex],
       bottomNavigationBar: BottomNavigationBar(
         currentIndex: currentIndex,
         onTap: (index){
           setState(() {
             currentIndex=index;
           });
         },
         items: [
           BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: 'Home'),
           BottomNavigationBarItem(icon: Icon(Icons.add_shopping_cart_sharp),label: 'cart'),
           BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),

         ],
         unselectedItemColor: Colors.grey,
         selectedItemColor: KprimaryColor,
         type: BottomNavigationBarType.fixed,
       ),

     );
   }
 }
