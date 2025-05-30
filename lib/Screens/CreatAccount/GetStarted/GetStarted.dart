import 'package:flutter/material.dart';
class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all( 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 200,),
                Image.asset("lib/Consts/Assets/Success Account Ilustration.png"),
                const SizedBox(height: 10,),
                const Text("Your account has been set up!",style: TextStyle(color: Color(0xff111827),fontSize: 24,fontWeight: FontWeight.w500),),
                const SizedBox(height: 10,),
                const SizedBox(
                  width: 300,
                    child: Text("We have customized feeds according to your preferences",style: TextStyle(color: Color(0xff6B7280),fontSize: 14,fontWeight: FontWeight.w400),textAlign: TextAlign.center,),),
                const Spacer(),
                SizedBox(
                  width: double.maxFinite,
                  height: 50,
                  child: OutlinedButton(
                    onPressed:  () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const GetStarted()));
                    },
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all( const Color(0xff3366FF)
                          ),
                    ),
                    child: const Text(
                      "Get Started",
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
