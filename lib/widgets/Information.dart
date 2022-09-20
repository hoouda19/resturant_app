import 'package:flutter/material.dart';

import '../constant/constant.dart';

class Information extends StatelessWidget {
  const Information({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: KprimaryColor,
        title: Text("About"),
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Text(
                "A restaurant mobile app is an application dedicated to a specific restaurant concept or chain of restaurants. Whether you own an Android or an iPhone, you use mobile apps on your phone every day.Most restaurant apps are centered around online ordering, but they can also include information on the restaurant’s loyalty program, specials, and ongoing promotions. Some restaurant apps even allow guests to place table reservations or check their spot on the waitlist .For many large chain restaurants, apps are a must-have. Starbucks revolutionized the concept of ordering ahead with its mobile app. In fact, Starbucks claims the second place spot for the most mobile payment users in the United States at 31.2 million users, second only to the Apple Wallet app itself.Smaller restaurant chains like Flour Bakery in Boston have also found success in launching a local restaurant app, using it as a platform for guests to accrue and use customer loyalty points.While it's rare for an app to make sense for a one-location small restaurant — (we’ll get into why in a bit) — it’s good to know the fundamentals of app development so you can make an informed decision for your restaurant.")
          ],
        ),
      ),
    );
  }
}
