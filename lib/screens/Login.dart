import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:proaimstest/screens/otp.dart';

class Login extends StatelessWidget {
   Login({super.key});
    final Phonenumber = TextEditingController();
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 49, 16, 4),
        body: Padding(
          padding: const EdgeInsets.only(top: 70, left: 18, right: 18),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Login",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 40),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  "Enter your Mobile Number Below.\nYou will recieve an SMS with a one time PIN",
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 123, 93, 83),
                      borderRadius: BorderRadius.circular(10)),
                  child: InternationalPhoneNumberInput(
                    textFieldController: Phonenumber,
                    onInputChanged: (PhoneNumber value) {},
                    //selectorTextStyle: TextStyle(color: Colors.black),
                    inputDecoration:
                        const InputDecoration(border: InputBorder.none),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.60,
                ),
                GestureDetector(
                  onTap: () {
                     Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OtpScreen()));
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: double.infinity,
                    // padding: const EdgeInsets.all(25),
                    // margin: const EdgeInsets.symmetric(horizontal: 25),
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color.fromRGBO(235, 122, 35, 1.0),
                            Color.fromARGB(255, 255, 195, 14)
                          ],
                        ),
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        "Next",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
