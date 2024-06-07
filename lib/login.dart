import 'package:flutter/material.dart';
import 'package:login_signup/signup.dart';

class login extends StatelessWidget {
  const login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xffE1BEE7),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xffE1BEE7),
        leading:
        IconButton( onPressed: (){
          Navigator.pop(context);
        },icon:Icon(Icons.arrow_back_ios,size: 20,color: Colors.black,)),
      ),
      body:Padding(
        padding: const EdgeInsets.fromLTRB(30,0,27,0),
        child: Column(
          children: [
            SizedBox(
              width: 35.0,
              height: 100.0,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "Login",
                style: TextStyle(fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color:Color(0xff9C27B0),
              ),
            ),
            ),
            SizedBox(
              width: 35.0,
              height: 10.0,
            ),
            Text(
              "Login to your account",
              //textAlign: TextAlign.center,
              style: TextStyle(fontSize:19,
                fontStyle: FontStyle.italic,
                color:Colors.black,
              ),
            ),
            SizedBox(
              width: 35.0,
              height: 50.0,
            ),
            TextField(
              obscureText: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff9C27B0)),
                ),
                labelText: 'User Name',
                hintText: 'Enter username',
              ),
            ),
            SizedBox(
              width: 35.0,
              height: 35.0,
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff9C27B0)),
                ),
                labelText: 'Password',
                hintText: 'Enter Password',
              ),
            ),
            SizedBox(
              width: 35.0,
              height: 50.0,
            ),
            InkWell(
              onTap: () {
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
            Text(
              "Don't have an account?",
              style: TextStyle(fontSize:16,
                fontStyle: FontStyle.italic,
                color:Color(0xff4A148C),
              ),
            ),
            GestureDetector(
              child: Text(
                "  Sign Up",
                style: TextStyle(fontSize:17,
                  fontWeight: FontWeight.bold,
                  color:Color(0xff4A148C),
                ),
              ),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => signup())
                  );
                },
              ),

            // Align(
            //   alignment: Alignment.center,
            //   child: ElevatedButton (
            //     onPressed: () {
            //         Navigator.push(
            //             context, MaterialPageRoute(builder: (context) => signup())
            //         );
            //     },
            //     child: Text(
            //       "Don't have an account?",
            //       style: TextStyle(fontSize: 20,
            //         //fontWeight: FontWeight.bold,
            //         color:Color(0xff9C27B0),
            //     ),
            //   ),
            // ),
            // ),
          ],
        ),
      ),
    );
  }
}