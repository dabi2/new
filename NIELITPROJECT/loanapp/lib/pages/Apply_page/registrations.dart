import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:loanapp/colors/color.dart';

class User {
  final String fullName;
  final String phoneNumber;
  final String accountNumber;
  final String pancardNumber;
  final String loanAmount;
  final String address;
  final String aadharNumber;
  final DateTime dateOfBirth;
  final bool agreedToTerms;

  User({
    required this.fullName,
    required this.phoneNumber,
    required this.accountNumber,
    required this.pancardNumber,
    required this.loanAmount,
    required this.address,
    required this.aadharNumber,
    required this.dateOfBirth,
    required this.agreedToTerms,
  });

  Map<String, dynamic> toMap() {
    return {
      'fullName': fullName,
      'phoneNumber': phoneNumber,
      'accountNumber': accountNumber,
      'pancardNumber': pancardNumber,
      'loanAmount': loanAmount,
      'address': address,
      'aadharNumber': aadharNumber,
      'dateOfBirth': dateOfBirth.toIso8601String(),
      'agreedToTerms': agreedToTerms,
    };
  }
}

class RegistrationLoan extends StatefulWidget {
  const RegistrationLoan({super.key});

  @override
  State<RegistrationLoan> createState() => _RegistrationLoanState();
}

class _RegistrationLoanState extends State<RegistrationLoan> {
  final _formKey = GlobalKey<FormState>();
  final _fullNameController = TextEditingController();
  final _phoneNumberController = TextEditingController();
  final _pancardNumberController = TextEditingController();
  final _accountNumberController = TextEditingController();
  final _loanAmountController = TextEditingController();
  final _addressController = TextEditingController();
  final _aadharNumberController = TextEditingController();
  var _dateOfBirth = DateTime.now();
  bool _agreedToTerms = false;
  @override
  void dispose() {
    _fullNameController.dispose();
    _phoneNumberController.dispose();
    _accountNumberController.dispose();
    _pancardNumberController.dispose();
    _loanAmountController.dispose();
    _addressController.dispose();
    _aadharNumberController.dispose();
    super.dispose();
  }

  Future<void> _submitForm() async {
    if (_formKey.currentState!.validate()) {
      // Create a User object with form data
      final userThatApplyLoan = User(
        fullName: _fullNameController.text,
        phoneNumber: _phoneNumberController.text,
        accountNumber: _accountNumberController.text,
        pancardNumber: _pancardNumberController.text,
        loanAmount: _loanAmountController.text,
        address: _addressController.text,
        aadharNumber: _aadharNumberController.text,
        dateOfBirth: _dateOfBirth,
        agreedToTerms: _agreedToTerms,
      );

      // Save user data to Firebase Datastore (replace with your logic)
      await FirebaseFirestore.instance
          .collection('Apply Loan')
          .add(userThatApplyLoan.toMap());

      // Show success message or navigate to another screen
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.lightGreen,
          content: Text(
            'Registration Successful!',
            style: GoogleFonts.merriweather(
              color: Colors.white,
            ),
          ),
        ),
      );
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColors.body,
      appBar: AppBar(
        title: Text(
          "Registration",
          style:
              GoogleFonts.audiowide(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _fullNameController,
                        keyboardType: TextInputType.name,
                        cursorColor: Colors.white,
                        cursorWidth: 1,
                        maxLength: 15,
                        decoration: InputDecoration(
                            hintText: "Kenneth Syiem",
                            floatingLabelStyle: const TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.white),
                            hintStyle: const TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w100),
                            labelText: 'Full Name',
                            labelStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: MainColors.appbar)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: MainColors.appbar))),
                        validator: (value) => value!.isEmpty
                            ? 'Please enter your full name'
                            : null,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: _phoneNumberController,
                        cursorColor: Colors.white,
                        cursorWidth: 1,
                        maxLength: 10,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                            hintText: "+91 8134597502",
                            hintStyle: const TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w100),
                            labelText: 'Phone Number',
                            labelStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: MainColors.appbar)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: MainColors.appbar))),
                        validator: (value) => value!.isEmpty
                            ? 'Please enter your phone number'
                            : null,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        cursorWidth: 1,
                        maxLength: 10,
                        cursorColor: Colors.white,
                        controller: _accountNumberController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            hintText: "12345 12345 123436",
                            hintStyle: const TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w100),
                            labelText: "Account Number",
                            labelStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: MainColors.appbar)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: MainColors.appbar))),
                        validator: (value) => value!.isEmpty
                            ? 'Enter please enter your 26 degit account Number'
                            : null,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        cursorWidth: 1,
                        maxLength: 10,
                        cursorColor: Colors.white,
                        controller: _pancardNumberController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            hintText: "COVPJ1235",
                            hintStyle: const TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w100),
                            labelText: "Pancard Number",
                            labelStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: MainColors.appbar)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: MainColors.appbar))),
                        validator: (value) =>
                            value!.isEmpty ? 'Enter Pancard Number' : null,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        cursorWidth: 1,
                        maxLength: 10,
                        cursorColor: Colors.white,
                        controller: _loanAmountController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            hintText: "\u20B9 10,000",
                            hintStyle: const TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w100),
                            labelText: "Enter Amount",
                            labelStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: MainColors.appbar)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: MainColors.appbar))),
                        validator: (value) =>
                            value!.isEmpty ? 'Please Enter Your Amount' : null,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        cursorWidth: 1,
                        maxLength: 20,
                        cursorColor: Colors.white,
                        controller: _addressController,
                        maxLines: null,
                        decoration: InputDecoration(
                            hintText:
                                "Liarsluid Village. Ribhoi-District,Meghalaya",
                            hintStyle: const TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w100),
                            labelText: 'Address',
                            labelStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: MainColors.appbar)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: MainColors.appbar))),
                        validator: (value) =>
                            value!.isEmpty ? 'Please enter your address' : null,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        cursorWidth: 1,
                        maxLength: 15,
                        cursorColor: Colors.white,
                        controller: _aadharNumberController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            hintText: "1234 1234 ****",
                            hintStyle: const TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w100),
                            labelText: 'Aadhar Number',
                            labelStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: MainColors.appbar)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: MainColors.appbar))),
                        validator: (value) => value!.isEmpty
                            ? 'Please enter your valid Aadhar number'
                            : null,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            "Date of Birth:",
                            style:
                                GoogleFonts.merriweather(color: Colors.white),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          IconButton(
                            onPressed: () async {
                              final pickedDate = await showDatePicker(
                                context: context,
                                initialDate: _dateOfBirth,
                                firstDate: DateTime(1900, 1),
                                lastDate: DateTime.now(),
                              );
                              if (pickedDate != null) {
                                setState(() {
                                  _dateOfBirth = pickedDate;
                                });
                              }
                            },
                            icon: const Icon(Icons.calendar_month_sharp),
                            color: Colors.white,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            DateFormat('yMMMMd').format(_dateOfBirth),
                            style:
                                GoogleFonts.merriweather(color: Colors.white),
                          ),
                          // TextButton(
                          //     onPressed: () async {
                          //       final pickedDate = await showDatePicker(
                          //         context: context,
                          //         initialDate: _dateOfBirth,
                          //         firstDate: DateTime(1900, 1),
                          //         lastDate: DateTime.now(),
                          //       );
                          //       if (pickedDate != null) {
                          //         setState(() {
                          //           _dateOfBirth = pickedDate;
                          //         });
                          //       }
                          //     },
                          //     child:
                          //         Text(DateFormat('yMMMMd').format(_dateOfBirth)))
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          // Expanded(child: CheckboxListTile(value: _agreedToTerms, onChanged: (value) => setState(() => _agreedToTerms = value!),),)
                          DecoratedBox(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      style: BorderStyle.solid,
                                      width: 0.1,
                                      color: Colors.white)),
                              child: Row(
                                children: [
                                  Checkbox(
                                    side: const BorderSide(color: Colors.white),
                                    activeColor: Colors.green[800],
                                    value: _agreedToTerms,
                                    onChanged: (value) =>
                                        setState(() => _agreedToTerms = value!),
                                  ),
                                  Text(
                                    "Continue to accept to terms and policy",
                                    style: GoogleFonts.merriweather(
                                        color: Colors.white),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  )
                                ],
                              )),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll<Color>(
                                MainColors.lightcontainer),
                            shape: const MaterialStatePropertyAll<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10))))),
                        onPressed: _submitForm,
                        child: Text("Apply Now",
                            style:
                                GoogleFonts.merriweather(color: Colors.white)),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
