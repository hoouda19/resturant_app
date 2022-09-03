import 'package:flutter/material.dart';
import '/moduels/login-screen.dart';
class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      //backgroundColor: Colors.blue,
      body: Stack(
        children: [
          Container(
            width: size.width,
            height: size.height,
            child:Image.asset("assets/images/back.jpg",fit: BoxFit.fill,) ,
          ),
          Align(
            alignment: Alignment(0,.7),
            child: Container(
              alignment: Alignment.center,
              width: size.width-100,
              height: size.height*.09,
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextButton(
                onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>LoginScreen()));
                },
                child: Text(
                  'Get Start',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 40,
                  ),
                ),
              ),
            ),
          ),
        ],
      )
    );
  }
}
