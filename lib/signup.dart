import 'package:flutter/material.dart';
import 'package:login_signup/login.dart';

class signup extends StatelessWidget {
  const signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8BBD0),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xffF8BBD0),
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
                "Sign Up",
                style: TextStyle(fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color:Color(0xffE91E63),
                ),
              ),
            ),
            SizedBox(
              width: 35.0,
              height: 10.0,
            ),
            Text(
              "Sign up to create an account",
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
                  borderSide: BorderSide(color: Color(0xff91E63)),
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
                  borderSide: BorderSide(color: Color(0xff91E63)),
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
                  color: Color(0xffF8BBD0),
                  border: Border.all(color: Color(0xff880E4F), width: 1.7),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff880E4F),
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
                      "Sign Up",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20,
                        color: Color(0xff880E4F),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Text(
              "Already have an account?",
              style: TextStyle(fontSize:16,
                fontStyle: FontStyle.italic,
                color:Color(0xff880E4F),
              ),
            ),
            GestureDetector(
              child: Text(
                "  Login",
                style: TextStyle(fontSize:17,
                  fontWeight: FontWeight.bold,
                  color:Color(0xff880E4F),
                ),
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => login())
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}