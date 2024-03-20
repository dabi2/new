import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loanapp/colors/color.dart';
import 'package:loanapp/loginscreens/reuseable_widget.dart';
import 'package:loanapp/pages/bottomnavigationbar.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController _userNameTextController = TextEditingController();
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();
  final TextEditingController _panNumberTextController = TextEditingController();
  final TextEditingController _accountNumberTextController = TextEditingController();
  // final TextEditingController _nomineeNameNumberTextController = TextEditingController();
  final TextEditingController _addressTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MainColors.appbar,
        title: Text(
          "Register Your Account",
          style: GoogleFonts.merriweather(
            fontWeight: FontWeight.bold,
            color:Colors.white,
          ),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: MainColors.body,
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Full Name", Icons.person_2, false,
                    _userNameTextController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField(
                    "Email", Icons.mail, false, _emailTextController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Password", Icons.lock_outline, true,
                    _passwordTextController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Address", Icons.location_on, false,
                    _addressTextController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Pan Number", Icons.card_travel, false,
                    _panNumberTextController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Account Number", Icons.account_balance_sharp,
                    false, _accountNumberTextController),
                const SizedBox(
                  height: 20,
                ),
                signInSignupButton(context, false, () async {
                  FirebaseAuth.instance
                      .createUserWithEmailAndPassword(
                          email: _emailTextController.text,
                          password: _passwordTextController.text)
                      .then((value) async {
                    print("created new account");
                    await Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const Mybottomnavigationbar()));
                  }).onError((error, stackTrace) {
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
