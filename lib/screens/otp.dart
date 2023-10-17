import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:proaimstest/screens/Registration.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 49, 16, 4),
      body: Padding(
        padding: const EdgeInsets.only(top: 70, left: 18, right: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Enter Verification Code",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              "We sent you a verification Code via SMS",
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 123, 93, 83),
                    borderRadius: BorderRadius.circular(8)
                  ),
                  height: 50,
                  width: 50,
                  child: TextField(
                    decoration: const InputDecoration(
                    border: InputBorder.none,
                  ),
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    style: Theme.of(context).textTheme.headline6,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 123, 93, 83),
                    borderRadius: BorderRadius.circular(8)
                  ),
                  height: 50,
                  width: 50,
                  child: TextField(
                    decoration: const InputDecoration(
                    border: InputBorder.none,
                  ),
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    style: Theme.of(context).textTheme.headline6,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 123, 93, 83),
                    borderRadius: BorderRadius.circular(8)
                  ),
                  height: 50,
                  width: 50,
                  child: TextField(
                    decoration: const InputDecoration(
                    border: InputBorder.none,
                  ),
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    style: Theme.of(context).textTheme.headline6,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 123, 93, 83),
                    borderRadius: BorderRadius.circular(8)
                  ),
                  height: 50,
                  width: 50,
                  child: TextField(
                    decoration: const InputDecoration(
                    border: InputBorder.none,
                  ),
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    style: Theme.of(context).textTheme.headline6,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 123, 93, 83),
                    borderRadius: BorderRadius.circular(8)
                  ),
                  height: 50,
                  width: 50,
                  child: TextField(
                    decoration: const InputDecoration(
                    border: InputBorder.none,
                  ),
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    style: Theme.of(context).textTheme.headline6,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 123, 93, 83),
                    borderRadius: BorderRadius.circular(8)
                  ),
                  height: 50,
                  width: 50,
                  child: TextField(
                    decoration: const InputDecoration(
                    border: InputBorder.none,
                  ),
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    style: Theme.of(context).textTheme.headline6,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 50,),
            GestureDetector(
              onTap: () {
                 Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Registration()));
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
    );
  }
}
