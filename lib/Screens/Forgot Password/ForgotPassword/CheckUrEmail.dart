import 'package:flutter/material.dart';
import 'package:jopsque0/Screens/Forgot%20Password/CreatNewPass/CreatNewPass.dart';

class CheckUrEmail extends StatefulWidget {
  const CheckUrEmail({super.key});

  @override
  State<CheckUrEmail> createState() => _GetStartedState();
}

class _GetStartedState extends State<CheckUrEmail> {
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
                Image.asset("lib/Consts/Assets/Email Ilustration.png"),
                const SizedBox(height: 10,),
                const Text("Check your Email",style: TextStyle(color: Color(0xff111827),fontSize: 24,fontWeight: FontWeight.w500),),
                const SizedBox(height: 10,),
                const SizedBox(
                  width: 300,
                    child: Text("We have sent a reset password to your email address",style: TextStyle(color: Color(0xff6B7280),fontSize: 14,fontWeight: FontWeight.w400),textAlign: TextAlign.center,),),
                const Spacer(),
                SizedBox(
                  width: double.maxFinite,
                  height: 50,
                  child: OutlinedButton(
                    onPressed:  () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CreateNewPass()));
                    },
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all( const Color(0xff3366FF)
                          ),
                    ),
                    child: const Text(
                      "Open email app",
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
