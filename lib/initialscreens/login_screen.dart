import 'package:clique_app/constants.dart';
import 'package:clique_app/homescreen/home_screen.dart';
import 'package:clique_app/initialscreens/tab_bar_page.dart';
import 'package:flutter/material.dart';

import 'createaccount.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key, key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.springTeal,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("assets/logoteal.png"),
                Text("Welcome !", style: TextStyle(color: Colors.white, fontSize: 30),),
                Text("Sign in to continue ", style: TextStyle(color: Colors.white70, fontSize: 20),),
                SizedBox(height: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Email", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),),
                    TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: new InputDecoration(
                          contentPadding:
                          EdgeInsets.only(left: 0, bottom: 11, top: 11, right: 15),
                          hintText: "example@mail.com",
                        hintStyle: TextStyle(color: Colors.white)
                      ),
                    )
                  ],
                ),

                SizedBox(
                  height: 10,
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Password", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),),
                    TextField(
                      style: TextStyle(color: Colors.white),

                      obscureText: true,
                      decoration: new InputDecoration(
                          contentPadding:
                          EdgeInsets.only(left: 0, bottom: 11, top: 11, right: 15),
                          hintText: "Abcd@123",
                          hintStyle: TextStyle(color: Colors.white),
                          suffixIcon: Icon(Icons.remove_red_eye_outlined, color: Colors.white,)
                      ),
                    )
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  alignment: Alignment.centerRight,
                  child: Text("Don't Remember?", style: TextStyle(color: Colors.white70, fontWeight: FontWeight.bold, fontSize: 15)),
                ),
                InkWell(
                  onTap: (){

                    Navigator.push(context, MaterialPageRoute(builder: (context) => TabBarScreen()));
                  },
                  child: Container(
                      margin: EdgeInsets.only(bottom: 20, top: 20),
                      alignment: Alignment.center,
                      width: double.infinity,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Text("Login", style: TextStyle(color: AppColors.springTeal, fontWeight: FontWeight.bold, fontSize: 20),)
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("New user?", style: TextStyle(color: Colors.white70, fontWeight: FontWeight.bold, fontSize: 15),),
                    SizedBox(width: 5,),
                    InkWell(
                        onTap: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context) => CreateAccount()));
                        },
                        child: Text("Sign Up", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),))
                  ],
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}