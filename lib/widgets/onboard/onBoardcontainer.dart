import 'package:flutter/material.dart';

import '../../moduels/screens.dart';

class onBoardContainer extends StatelessWidget {
  final String title;
  final String subTitle;
  final String image;
  final String floatimg;
  const onBoardContainer(this.title, this.subTitle, this.image, this.floatimg,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Container(
        width: double.infinity,
        color: Colors.white,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: mediaSize.height * 1 / 2,
              child: Image.asset(
                image,
                //fit: BoxFit.cover,
              ),
            ),

            Container(
              margin: EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Colors.greenAccent,
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              height: mediaSize.height * 1 / 3,
              width: double.infinity,
              //   color: Colors.green,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Text(
                      title,
                      style: const TextStyle(
                        fontSize: 45,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Text(
                    subTitle,
                    style: const TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (_) => LoginScreen()));
                    },
                    //backgroundColor: Colors.greenAccent,
                    child: Text(
                      floatimg,
                      style: TextStyle(color: Colors.red, fontSize: 20),
                    ),
                  )
                ],
              ),
            ),
            // Padding(
            //     padding: const EdgeInsets.symmetric(
            //       horizontal: 15.0,
            //     ),
            //     child: Column(
            //       mainAxisAlignment: MainAxisAlignment.end,
            //       children: [
            //         Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //           children: [
            //             TextButton(
            //                 onPressed: () {},
            //                 child: const Text(
            //                   'Back',
            //                   style: TextStyle(color: Colors.white),
            //                 )),
            //             TextButton(
            //                 onPressed: () {},
            //                 child: const Text('Next',
            //                     style: TextStyle(color: Colors.white))),
            //           ],
            //         ),
            //       ],
            //     )),
          ],
        ),
      ),
    );
  }
}
