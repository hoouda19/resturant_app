import 'package:flutter/material.dart';

import '../data/onboard_data.dart';
import '../widgets/onboard/onBoardcontainer.dart';

class onboardPageView extends StatelessWidget {
  const onboardPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView.builder(
      itemBuilder: (context, index) => onBoardContainer(
          onBoradList[index].title,
          onBoradList[index].subtitle,
          onBoradList[index].image,
          onBoradList[index].floatimg),
      itemCount: onBoradList.length,
    ));
  }
}
