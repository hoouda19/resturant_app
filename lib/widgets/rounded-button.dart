import 'package:flutter/material.dart';
import '/constant/pallete.dart';

//import '../pallete.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    required this.function,
    required this.buttonName,
  });

  final Function function;
  final String buttonName;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.08,
      width: size.width * 0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Color(0xff86C100),
      ),
      child: FlatButton(
        onPressed:()=> function(),
        child: Text(
          buttonName,
          style: kBodyText.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
