import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_sign_up_firebase/auth_controller.dart';

class WelcomePage extends StatelessWidget {
  String email;

   WelcomePage({super.key, required this.email });

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery
        .of(context)
        .size
        .width;
    double h = MediaQuery
        .of(context)
        .size
        .height;

    return Scaffold(
      body: Column(
        children: [
          Container(
            width: w,
            height: h * 0.3,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("img/signup.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: h * 0.20,
                ),
                const CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.white70,
                  backgroundImage: AssetImage("img/profile1.png"),
                ),
              ],
            ),
          ),
          const Text('Welcome ', style: TextStyle(fontSize: 30),),
           Text(email, style: const TextStyle(fontSize: 30),),
          GestureDetector(
            onTap: () {
              AuthController.instance.logOut();
            },
            child: Container(
              margin: const EdgeInsets.only(top: 50),
              width: w * 0.5,
              height: h * 0.08,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: const DecorationImage(
                  image: AssetImage("img/loginbtn.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: const Center(
                child: Text(
                  'Sign out',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
