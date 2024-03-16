import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:loanapp/colors/color.dart';
import 'package:loanapp/loginscreens/reuseable_widget.dart';
import 'package:loanapp/pages/bottomnavigationbar.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController _userNameTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _passwordTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: MainColors.body,
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 120, 20, 0),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                reusableTextField("Enter Username", Icons.person_2, false,
                    _userNameTextController),
                SizedBox(
                  height: 20,
                ),
                reusableTextField(
                    "Email", Icons.mail, false, _emailTextController),
                SizedBox(
                  height: 20,
                ),
                reusableTextField("Password", Icons.lock_outline, true,
                    _passwordTextController),
                SizedBox(
                  height: 20,
                ),
                signInSignupButton(context, false, () {
                  FirebaseAuth.instance.createUserWithEmailAndPassword(
                      email: _emailTextController.text,
                      password: _passwordTextController.text).then((value) {
                        print("created new account");
                        Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Mybottomnavigationbar()));
                      } ).onError((error, stackTrace) {
                        print("Error ${error.toString()}");
                      });
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
