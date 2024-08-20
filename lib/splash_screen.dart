import 'package:doctor_appointment/sign_in.dart';
import 'package:flutter/material.dart';



class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Container(

            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Color(0x8FAEEAFF), Colors.white]),

            ),

          child: Column(
            children: [

              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    children: [
                      Spacer(
                        flex: 3,
                      ),
                      Text(
                        "Your Health",
                        style: TextStyle(
                          fontSize: 45,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Our Care",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 40,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Health care should be simple, fast\nuncomplicated.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black38,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          wordSpacing: 4.0,
                          height: 1.5,
                        ),
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignIn(),
                            ),
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Next",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(Icons.arrow_forward),
                          ],
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  child:
                      Image.asset("assets/doctor_splash2.png", height: 100,width: 400),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
