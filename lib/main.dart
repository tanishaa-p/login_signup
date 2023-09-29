import 'package:flutter/material.dart';
import 'package:login_signup/login.dart';
import 'package:login_signup/signup.dart';

void main() {
  runApp(const MaterialApp(debugShowCheckedModeBanner: false, home:FirstScreen()));
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff9C27B0),
        body:Padding(
            padding: const EdgeInsets.fromLTRB(27,0,27,0),
          child: Column(
            children: [
              SizedBox(
                width: 35.0,
                height: 185.0,
              ),
              Text(
                "WELCOME!",
                style: TextStyle(fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color:Colors.white),
          ),
              SizedBox(
                width: 35.0,
                height: 15.0,
              ),
              Text(
                "Login/Sign up to XYZ and enter the world of amazing products at your own convenience!",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 17.6,
                    fontStyle: FontStyle.italic,
                  color:Color(0xffE1BEE7),
                ),
              ),
              SizedBox(
                width: 35.0,
                height: 100.0,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => login())
                  );
                },
                child: Container(
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Color(0xffE1BEE7),
                    border: Border.all(color: Color(0xff4A148C), width: 1.7),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff4A148C),
                        blurRadius: 1.0,
                        spreadRadius: 0.0,
                        offset: Offset(0, -2.0), // shadow direction: bottom right
                      )
                    ],
                  ),
                  width: 300,
                  height: 55,
                  padding: EdgeInsets.fromLTRB(0,12,0,0),
                  child: Column(
                    children: [
                      Text(
                        "Login",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20,
                          color: Color(0xff4A148C),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 35.0,
                height: 11.0,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => signup())
                  );
                },
                child: Container(
                  //margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Color(0xff4A148C),
                    border: Border.all(color: Color(0xffBA68C8), width: 1.7),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xffBA68C8),
                        blurRadius: 1.0,
                        spreadRadius: 0.0,
                        offset: Offset(0, -4.0), // shadow direction: bottom right
                      )
                    ],
                  ),
                  width: 300,
                  height: 55,
                  padding: EdgeInsets.fromLTRB(0,12,0,0),
                  child: Column(
                    children: [
                      Text(
                        "Sign up",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20,
                          color: Color(0xffE1BEE7),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
    );
  }
}