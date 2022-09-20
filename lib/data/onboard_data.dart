import 'package:flutter/material.dart';
import '../model/onboard_page_model.dart';

List<Onboardmodel> onBoradList = [
  Onboardmodel('Resturant App', 'Welcom To Resturant App',
      'assets/images/onBoard/onboard1.png', '', true),
  // Onboardmodel('Coffee App', 'In This App You Can Buy Any Coffee',
  //     'assets/onboardimage/pngwing1.png'),
  Onboardmodel('Resturant App', 'The Best Price',
      'assets/images/onBoard/onboard.png', 'START', false)
];

final contrpage = PageController();
