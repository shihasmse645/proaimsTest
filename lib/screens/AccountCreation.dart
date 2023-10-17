import 'package:flutter/material.dart';
import 'package:proaimstest/screens/NavigationBar.dart';

class AccCreate extends StatelessWidget {
  const AccCreate({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
        backgroundColor: const Color.fromARGB(255, 49, 16, 4),
      body: Padding(
        padding:const EdgeInsets.only(top: 70, left: 18, right: 18) ,
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
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Select Your Branch"),
                    TextField(
                       
                        decoration: InputDecoration(
                            enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey.shade400)),
                            fillColor: Colors.grey.shade200,
                            filled: true,
                            hintText: "Select Branch",
                            suffixIcon: Icon(Icons.arrow_drop_down)
                            ),
                      ),
                    Text("Select Your District"),

                      TextField(
                       
                        decoration: InputDecoration(
                            enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey.shade400)),
                            fillColor: Colors.grey.shade200,
                            filled: true,
                            hintText: "Calicut",
                            suffixIcon: Icon(Icons.arrow_drop_down)
                            ),
                      ),
                    Text("Select Your Area"),

                      TextField(
                        decoration: InputDecoration(
                          enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey.shade400)),
                          fillColor: Colors.grey.shade200,
                          filled: true,
                          hintText: "Select Area",
                          //suffixIcon: const Icon(Icons.calendar_month_outlined)
                          ),
                      ),
                    Text("Referral COde"),

                      TextField(
                        decoration: InputDecoration(
                          enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey.shade400)),
                          fillColor: Colors.grey.shade200,
                          filled: true,
                          hintText: " Type Referral Code",
                          //suffixIcon: const Icon(Icons.calendar_month_outlined)
                          ),
                      ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Don't You have a referral code?",style: TextStyle(color: Colors.green),),
                        SizedBox(width: 3,),
                        Image.asset("assets/Images/whatsp.png",height: 13,)
                      ],
                    ),
                      const SizedBox(
                        height: 50,
                      ),

                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>  NavBar()));
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
                                          child: const Text(
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