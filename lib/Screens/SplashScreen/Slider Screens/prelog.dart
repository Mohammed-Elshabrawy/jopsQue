import 'package:flutter/material.dart';
import 'package:jopsque0/Screens/Login/Login.dart';

import '../../CreatAccount/SignUp/CreateAccount.dart';


class Prelog extends StatelessWidget {
  const Prelog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100),
            child: Image.asset(
              "lib/Consts/Assets/Logo.png",
              height: 100,
              width: 300,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
           const Text(
            "Let’s get started!",
            style: TextStyle(
                color: Color(0xff3366FF),
                fontSize: 22,
                fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
              width: 250,
              child: Text(
                "Login to enjoy the features we’ve provided",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF717784),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              )
          ),
          const SizedBox(
            height: 20,
          ),
         SizedBox(
           height: 50,
           width: 250,
           child: OutlinedButton(
               onPressed: (){
                 Navigator.push(
                     context,
                     MaterialPageRoute(
                         builder: (context) => const Login()));
               },
             style:ButtonStyle(
                 backgroundColor:  WidgetStateProperty.all(Color(0xff3366FF))
             ) ,
             child: const Text("Login",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w700),),
           ),
         ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 50,
            width: 250,
            child: OutlinedButton(
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CreateAccount()));

                }, child: const Text("Sign Up",style: TextStyle(color: Color(0xff3366FF),fontSize: 16,fontWeight: FontWeight.w700),)
            ),
          ),
        ],
      ),
    );
  }
}

