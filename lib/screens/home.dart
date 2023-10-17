import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 49, 16, 4),
        body: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(Icons.menu,size: 30,color: Colors.white,),
                Image.asset("assets/Images/icon.png",height: 30,),
                const Icon(Icons.notification_add,size: 30,color: Colors.white,),

              ],

            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Image.asset("assets/Images/lad.png"),
                const Positioned(
                  top: 50,
                  left: 200,
                  child: Text("CRAFTY DESIGN \nTO ENGRAVE \nPASSION",style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20
                  ),)),
                  Positioned(
                    top: 205,
                    left: 50,
                    right: 50,
                    child:  Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
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
                        child: const Padding(
                          padding: EdgeInsets.all(20),
                          child: Column(
                            children: [Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("1 Gram"),
                                Text("8 Gram"),
                                Text("8 Gram"),
                                      
                              ],
                            ),
                            Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("₹ 4775",style: TextStyle(fontWeight: FontWeight.bold),),
                              Text("₹ 46000",style: TextStyle(fontWeight: FontWeight.bold)),
                              Text("₹ 100",style: TextStyle(fontWeight: FontWeight.bold)),
                                      
                            ],  
                            )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 65,
                        bottom: 70,
                        child: Container(
                          
                          decoration: BoxDecoration(
                            
                             color: Color.fromARGB(255, 40, 27, 27),
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(child: Text("Today's Gold Rate",style: TextStyle(color: Colors.white),)),
                        ),
                      )
                      ],
                    ),
                  )
              ],
            ),
            SizedBox(height: 10,),
            
          ],
        ),
    );
  }
}