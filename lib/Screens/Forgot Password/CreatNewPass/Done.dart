import 'package:flutter/material.dart';
import '../../Login/Login.dart';
class ChangedSuccessfully extends StatefulWidget {
  const ChangedSuccessfully({super.key});

  @override
  State<ChangedSuccessfully> createState() => _ChangedSuccessfullyState();
}
class _ChangedSuccessfullyState extends State<ChangedSuccessfully> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all( 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 200,),
                Image.asset("lib/Consts/Assets/Password Succesfully Ilustration.png"),
                const SizedBox(height: 10,),
                const Text("Password changed successfully!",style: TextStyle(color: Color(0xff111827),fontSize: 24,fontWeight: FontWeight.w500),textAlign: TextAlign.center,),
                const SizedBox(height: 10,),
                const SizedBox(
                  width: 300,
                  child: Text("Your password has been changed successfully, we will let you know if there are more problems with your account",style: TextStyle(color: Color(0xff6B7280),fontSize: 14,fontWeight: FontWeight.w400),textAlign: TextAlign.center,),),
                const Spacer(),
                SizedBox(
                  width: double.maxFinite,
                  height: 50,
                  child: OutlinedButton(
                    onPressed:  () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Login()));
                    },
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all( const Color(0xff3366FF)
                      ),
                    ),
                    child: const Text(
                      "Login",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color:  Color(0xffffffff)
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
