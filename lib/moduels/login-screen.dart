import 'package:flutter/material.dart';
import '/constant/pallete.dart';
import '/layout/home_layout.dart';
import '/model/user.dart';
import '/widgets/background-image.dart';
import '/widgets/password-input.dart';
import '/widgets/rounded-button.dart';
import '/widgets/text-field-input.dart';

//import '../pallete.dart';
import 'create-new-account.dart';

class LoginScreen extends StatelessWidget {
  var eControl = TextEditingController();
  var pControl = TextEditingController();
  bool correct = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgroundImage(
            image: 'assets/images/login_bg.jpeg',
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              children: [
                Flexible(
                  child: Center(
                    child: Text(
                      'Gusto',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 70,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextInputField(
                      icon: Icons.email,
                      hint: 'Email',
                      inputType: TextInputType.emailAddress,
                      inputAction: TextInputAction.next,
                      editingController: eControl,
                    ),
                    PasswordInput(
                      icon: Icons.lock,
                      hint: 'Password',
                      inputAction: TextInputAction.done,
                      inputType: TextInputType.name,
                      editingController: pControl,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    RoundedButton(
                      function: () {
                        final snack = SnackBar(
                          content:
                              Text('invalid password or email try again :)'),
                          backgroundColor: Colors.red,
                        );
                        for (int i = 0; i < loginUsers.length; i++) {
                          if (loginUsers[i].email == eControl.value.text &&
                              loginUsers[i].password == pControl.value.text) {
                            correct = true;
                            break;
                          }
                        }
                        correct
                            ? Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (_) => HomeLayout()))
                            : ScaffoldMessenger.of(context).showSnackBar(snack);
                      },
                      buttonName: 'Login',
                    ),
                    SizedBox(
                      height: 25,
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () => Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (_) => CreateNewAccount())),
                  child: Container(
                    child: Text(
                      'Create New Account',
                      style: kBodyText,
                    ),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(width: 1, color: kWhite))),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
