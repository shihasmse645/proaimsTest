import 'package:flutter/material.dart';
import 'package:proaimstest/screens/AccountCreation.dart';

class Registration extends StatelessWidget {
  const Registration({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
        backgroundColor: const Color.fromARGB(255, 49, 16, 4),
      body: Padding(
        padding: const EdgeInsets.only(top: 70, left: 18, right: 18),
        child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Welcome",style:TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  ) ,),
            const SizedBox(height: 10,),
            const Text(
              "Create Account",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 40),
            ),
            const SizedBox(height: 20,),
            Container(
              color: Colors.white,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    TextField(
                       
                        decoration: InputDecoration(
                            enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey.shade400)),
                            fillColor: Colors.grey.shade200,
                            filled: true,
                            hintText: "Name",
                            ),
                      ),
                      TextField(
                       
                        decoration: InputDecoration(
                            enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey.shade400)),
                            fillColor: Colors.grey.shade200,
                            filled: true,
                            hintText: "Email",
                            ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey.shade400)),
                          fillColor: Colors.grey.shade200,
                          filled: true,
                          hintText: "Date Of Birth",
                          suffixIcon: Icon(Icons.calendar_month_outlined)
                          ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AccCreate()));
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
            )
          ],
        ),
      ),
    );
  }
}