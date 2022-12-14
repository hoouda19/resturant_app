import 'package:flutter/material.dart';

import '../widgets/Information.dart';
import '../widgets/Names.dart';
import '/constant/constant.dart';
import 'login-screen.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool is_vis = true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          buildContainerHead(size),
          SizedBox(height: 20),
          GestureDetector(
            onTap: () {},
            child: ListTile(
              leading: Icon(Icons.wysiwyg, color: KprimaryColor),
              title: Text("My Order"),
              trailing: Icon(Icons.arrow_forward),
            ),
          ),
          SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Names(),
                  ));
            },
            child: ListTile(
              leading: Icon(Icons.assignment_turned_in, color: KprimaryColor),
              title: Text("Offers"),
              trailing: Icon(Icons.arrow_forward),
            ),
          ),
          SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Names(),
                  ));
            },
            child: ListTile(
              leading: Icon(Icons.notifications, color: KprimaryColor),
              title: Text("Notification"),
              trailing: Icon(Icons.arrow_forward),
            ),
          ),
          SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Names(),
                  ));
            },
            child: ListTile(
              leading: Icon(Icons.developer_mode, color: KprimaryColor),
              title: Text("Developer Names"),
              trailing: Icon(Icons.arrow_forward),
            ),
          ),
          SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Information(),
                  ));
            },
            child: ListTile(
              leading: Icon(Icons.error, color: KprimaryColor),
              title: Text("About"),
              trailing: Icon(Icons.arrow_forward),
            ),
          ),
          Container(
            width: 200,
            height: 55,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(colors: [
                  KprimaryColor,
                  KprimaryColor.withOpacity(.6),
                ])),
            child: TextButton(
              onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
              },
              child: Text(
                'Log Out',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Padding buildTextfiled(text, icon, num) {
    Color c = Colors.green;
    return Padding(
      padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
      child: TextFormField(
        onChanged: (value) {},
        obscureText: num == 1 ? is_vis : false,
        decoration: InputDecoration(
          suffixIcon: num == 1
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      is_vis = !is_vis;
                    });
                  },
                  icon: Icon(
                    is_vis ? Icons.visibility : Icons.visibility_off,
                    size: 30,
                    color: is_vis ? KprimaryColor : c,
                  ),
                )
              : null,
          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          prefixIcon: Padding(
            padding: const EdgeInsets.only(right: 25, left: 10),
            child: Icon(
              icon,
              color: KprimaryColor,
              size: 30,
            ),
          ),
          labelText: text,
        ),
      ),
    );
  }

  Container buildContainerHead(Size size) {
    return Container(
      height: size.height * .38,
      child: Stack(
        children: [
          Container(
            width: size.width,
            height: size.height * .3,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [KprimaryColor, KprimaryColor.withOpacity(.5)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight),
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(80)),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: Container(
                alignment: Alignment.center,
                width: size.width * .20,
                height: size.height * .12,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Icon(
                  Icons.person_sharp,
                  color: KprimaryColor,
                  size: 70,
                )),
          ),
          Align(
            child: Text(
              "Mahmoud",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.w600,
                letterSpacing: 1,
              ),
            ),
            alignment: Alignment(0, -0.2),
          ),
        ],
      ),
    );
  }
}
