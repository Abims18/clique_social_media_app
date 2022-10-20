import 'package:clique_app/constants.dart';
import 'package:clique_app/homescreen/home_screen.dart';
import 'package:clique_app/initialscreens/tab_bar_page.dart';
import 'package:flutter/material.dart';

import 'login_screen.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key, key}) : super(key: key);

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
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
                Container(
                  alignment: Alignment.center,
                  height: 300,
                    child: Image.asset("assets/logoteal.png")),
                Text(
                  "Welcome to Clique !",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                Text(
                  "We got you covered. Just a few details",
                  style: TextStyle(color: Colors.white70, fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Name",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: new InputDecoration(
                          contentPadding: EdgeInsets.only(
                              left: 0, bottom: 11, top: 11, right: 15),
                          hintText: "John Doe",
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
                    Text(
                      "Email",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    TextField(
                      style: TextStyle(color: Colors.white),

                      decoration: new InputDecoration(
                          contentPadding: EdgeInsets.only(
                              left: 0, bottom: 11, top: 11, right: 15),
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
                    Text(
                      "Password",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    TextField(
                      style: TextStyle(color: Colors.white),
                      obscureText: true,
                      decoration: new InputDecoration(
                          contentPadding: EdgeInsets.only(
                              left: 0, bottom: 11, top: 11, right: 15),
                          hintText: "Abcd@123",
                          hintStyle: TextStyle(color: Colors.white),
                          suffixIcon: Icon(Icons.remove_red_eye_outlined, color: Colors.white,)),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Confirm Password",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    TextField(
                      style: TextStyle(color: Colors.white),
                      obscureText: false,
                      decoration: new InputDecoration(
                        contentPadding: EdgeInsets.only(
                            left: 0, bottom: 11, top: 11, right: 15),
                        hintText: "Rembember them",
                        hintStyle: TextStyle(color: Colors.white),

                      ),
                    )
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  alignment: Alignment.centerRight,
                  child: Text("Don't Remember?",
                      style: TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.bold,
                          fontSize: 15)),
                ),
                InkWell(
                  onTap: () {
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
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            color: AppColors.springTeal,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Not new?",
                      style: TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()));
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ))
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
