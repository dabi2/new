import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loanapp/colors/color.dart';
import 'package:loanapp/pages/drawer.dart';
import 'package:loanapp/pages/languagepage.dart';
import 'package:loanapp/pages/notifications.dart';
import 'dart:math';

class Applyloann extends StatefulWidget {
  const Applyloann({super.key});

  @override
  State<Applyloann> createState() => _ApplyloannState();
}

class _ApplyloannState extends State<Applyloann> {
  final List _tenureTypes = ["Month(s)", "Year(s)"];
  String _tenureType = "Year(s)";
  String _emiResult = "";
  bool _switchValue = true;
  final TextEditingController _principalAmount = TextEditingController();
  final TextEditingController _interestRate = TextEditingController();
  final TextEditingController _tenure = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MainColors.body,
        appBar: AppBar(
          backgroundColor: MainColors.appbar,
          title: Center(
              child: Text(
            'Apply Loan',
            style: GoogleFonts.audiowide(
              color: Colors.white,
              fontSize: 25,
            ),
          )),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Notifications()));
              },
              icon: const Icon(
                Icons.notifications,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Languagepage()));
              },
              icon: const Icon(
                Icons.language,
                color: Colors.white,
              ),
            ),
          ],
          elevation: 100,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: MainColors.containercolor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                  ),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        controller: _principalAmount,
                        decoration: InputDecoration(
                            labelText: "Enter Principal Amount",
                            labelStyle: TextStyle(color: Colors.white),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white))),
                        keyboardType: TextInputType.number,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        controller: _interestRate,
                        decoration: InputDecoration(
                          labelText: "Interest Rate",
                          labelStyle: TextStyle(color: Colors.white),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          fillColor: Colors.amber,
                        ),
                        keyboardType: TextInputType.number,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Flexible(
                            flex: 4,
                            fit: FlexFit.tight,
                            child: TextField(
                              controller: _tenure,
                              decoration: const InputDecoration(
                                  labelText: "Tenure",
                                  labelStyle: TextStyle(color: Colors.white),
                                  border: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white))),
                              keyboardType: TextInputType.number,
                            ),
                          ),
                          Flexible(
                              flex: 1,
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    _tenureType,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Switch(
                                      value: _switchValue,
                                      onChanged: (bool value) {
                                        print(value);
                                        if ((value)) {
                                          _tenureType = _tenureTypes[1];
                                        } else {
                                          _tenureType = _tenureTypes[0];
                                        }
                                        setState(() {
                                          _switchValue = value;
                                        });
                                      })
                                ],
                              ))
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    5.0), // Adjust border radius as needed
                              ),
                            ),
                            backgroundColor: MaterialStatePropertyAll(
                                MainColors.lightcontainer)),
                        onPressed: _handleCalculation,
                        child: Text(
                          "Calculate",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      emiResultsWidget(_emiResult)
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 255, 255, 255),
                    ),
                    padding: EdgeInsets.only(left: 20, top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: [
                            Text.rich(
                              TextSpan(
                                  text: "Get Instant",
                                  style: GoogleFonts.merriweather()),
                            ),
                            Text.rich(TextSpan(
                                text: " LOAN",
                                style: GoogleFonts.merriweather(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ))),
                            Text.rich(TextSpan(
                                text: " With just One Click ",
                                style: GoogleFonts.merriweather())),
                            Icon(
                              Icons.clean_hands,
                              color: MainColors.containercolor,
                            ),
                          ],
                        ),
                        Divider(
                          color: MainColors.containercolor,
                          endIndent: 50,
                        ),
                        Column(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 415,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.home_sharp),
                                      Text("Home Loan"),
                                    ],
                                  ),
                                  ElevatedButton.icon(
                                      onPressed: () {},
                                      style: ButtonStyle(
                                          shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                            ),
                                          ),
                                          backgroundColor:
                                              MaterialStatePropertyAll(
                                                  MainColors.lightcontainer)),
                                      icon: Icon(
                                        Icons.monetization_on_outlined,
                                        color: Colors.white,
                                      ),
                                      label: Text(
                                        "Apply Now",
                                        style: TextStyle(color: Colors.white),
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          color: MainColors.containercolor,
                        ),
                        Column(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 415,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.car_rental_rounded),
                                      Text("Car Loan"),
                                    ],
                                  ),
                                  ElevatedButton.icon(
                                      onPressed: () {},
                                      style: ButtonStyle(
                                          shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                            ),
                                          ),
                                          backgroundColor:
                                              MaterialStatePropertyAll(
                                                  MainColors.lightcontainer)),
                                      icon: Icon(
                                        Icons.monetization_on_outlined,
                                        color: Colors.white,
                                      ),
                                      label: Text(
                                        "Apply Now",
                                        style: TextStyle(color: Colors.white),
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          color: MainColors.containercolor,
                        ),
                        Column(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 415,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.school_rounded),
                                      Text("Education Loan"),
                                    ],
                                  ),
                                  ElevatedButton.icon(
                                      onPressed: () {},
                                      style: ButtonStyle(
                                          shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                            ),
                                          ),
                                          backgroundColor:
                                              MaterialStatePropertyAll(
                                                  MainColors.lightcontainer)),
                                      icon: Icon(
                                        Icons.monetization_on_outlined,
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                      ),
                                      label: Text(
                                        "Apply Now",
                                        style: TextStyle(
                                          color: const Color.fromARGB(
                                              255, 255, 255, 255),
                                        ),
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          color: MainColors.containercolor,
                        ),
                        Column(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 415,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.school_rounded),
                                      Text("Education Loan"),
                                    ],
                                  ),
                                  ElevatedButton.icon(
                                      onPressed: () {},
                                      style: ButtonStyle(
                                          shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                            ),
                                          ),
                                          backgroundColor:
                                              MaterialStatePropertyAll(
                                                  MainColors.lightcontainer)),
                                      icon: Icon(
                                        Icons.monetization_on_outlined,
                                        color: Colors.white,
                                      ),
                                      label: Text(
                                        "Apply Now",
                                        style: TextStyle(color: Colors.white),
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 6,
                        )
                      ],
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 200,
                color: Color.fromARGB(255, 25, 0, 255),
                child: Text('data'),
              ),
              Container(
                height: 200,
                color: const Color.fromARGB(255, 202, 44, 44),
                child: Text('data'),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 200,
                color: Color.fromARGB(255, 4, 231, 72),
                child: Text('data'),
              ),
            ],
          ),
        ));
  }

  void _handleCalculation() {
    double A = 0.0;
    int P = int.parse(_principalAmount.text);
    double r = int.parse(_interestRate.text) / 12 / 100;
    int n = _tenureType == "Year(s)"
        ? int.parse(_tenure.text) * 12
        : int.parse(_tenure.text);
    A = (P * r * pow((1 + r), n) / (pow((1 + r), n) - 1));
    _emiResult = A.toStringAsFixed(2);
    setState(() {});
  }

  Widget emiResultsWidget(emiResult) {
    bool canShow = false;
    String _emiResult = emiResult;
    if (_emiResult.length > 0) {
      canShow = true;
    }
    const SizedBox(
      height: 20,
    );
    return canShow
        ? Column(
            children: [
              Text("Your Montly EMI Is",
                  style: GoogleFonts.openSans(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )),
              Text(
                '\u20B9' + _emiResult,
                style: GoogleFonts.roboto(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey,
                ),
              ),
            ],
          )
        : Column();
  }
}
