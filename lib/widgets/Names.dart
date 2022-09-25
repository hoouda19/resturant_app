import 'package:flutter/material.dart';
import 'package:resturant_app/constant/constant.dart';

class Names extends StatelessWidget {
  const Names({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: KprimaryColor,
        title: Text("Developer Names"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: KprimaryColor,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    ListTile(
                        leading: Text(
                          "Name :",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        title: Text(
                          "Ahmed Yaser Nagah Mohamed",
                          style: TextStyle(color: Colors.white),
                        )),
                    ListTile(
                        leading: Text(
                          "Group :",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        title: Text(
                          "5",
                          style: TextStyle(color: Colors.white),
                        )),
                    ListTile(
                        leading: Text(
                          "University :",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        title: Text(
                          "Mansoura",
                          style: TextStyle(color: Colors.white),
                        )),
                    ListTile(
                        leading: Text(
                          "Collage :",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        title: Text(
                          "Computer science and Information",
                          style: TextStyle(color: Colors.white),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: KprimaryColor,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    ListTile(
                        leading: Text(
                          "Name :",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        title: Text(
                          "Tasnem Ali Ebrahim",
                          style: TextStyle(color: Colors.white),
                        )),
                    ListTile(
                        leading: Text(
                          "Group : ",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        title: Text(
                          "5",
                          style: TextStyle(color: Colors.white),
                        )),
                    ListTile(
                        leading: Text(
                          "University : ",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        title: Text(
                          "Mansoura",
                          style: TextStyle(color: Colors.white),
                        )),
                    ListTile(
                        leading: Text(
                          "Collage :",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        title: Text(
                          "Computer science and Information",
                          style: TextStyle(color: Colors.white),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: KprimaryColor,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    ListTile(
                        leading: Text(
                          "Name :",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        title: Text(
                          "Mahmoud Mohammed Abdulmajeed",
                          style: TextStyle(color: Colors.white),
                        )),
                    ListTile(
                        leading: Text(
                          "Group : ",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        title: Text(
                          "5",
                          style: TextStyle(color: Colors.white),
                        )),
                    ListTile(
                        leading: Text(
                          "University : ",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        title: Text(
                          "Misr Higher Institute For Commerce & Computers",
                          style: TextStyle(color: Colors.white),
                        )),
                    ListTile(
                        leading: Text(
                          "Collage :",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        title: Text(
                          "Computer Science",
                          style: TextStyle(color: Colors.white),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: KprimaryColor,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    ListTile(
                        leading: Text(
                          "Name :",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        title: Text(
                          "Ali Mohamed Ali Abdo",
                          style: TextStyle(color: Colors.white),
                        )),
                    ListTile(
                        leading: Text(
                          "Group : ",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        title: Text(
                          "5",
                          style: TextStyle(color: Colors.white),
                        )),
                    ListTile(
                        leading: Text(
                          "University : ",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        title: Text(
                          "Misr Higher Institute For Commerce & Computers",
                          style: TextStyle(color: Colors.white),
                        )),
                    ListTile(
                        leading: Text(
                          "Collage :",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        title: Text(
                          "Computer Science",
                          style: TextStyle(color: Colors.white),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
