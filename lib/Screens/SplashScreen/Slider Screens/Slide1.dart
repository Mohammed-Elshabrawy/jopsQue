import 'package:flutter/material.dart';
import 'package:jopsque0/Screens/SplashScreen/Slider%20Screens/prelog.dart';

import 'Slide2.dart';
class One extends StatefulWidget {
  const One({super.key});

  @override
  State<One> createState() => _oneState();
}

class _oneState extends State<One> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(children: [
                SizedBox(
                  height:20 ,
                    child: Image.asset("lib/Consts/Assets/Logo.png")),
                const Spacer(),
                TextButton(onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Prelog()));

                }, child: const Text("Skip",style:TextStyle(color: Color(0xff6B7280)),))
              ],),
            ),
            Image.asset('lib/Consts/Assets/Background.png'),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                   width: 300,
                    child: Text.rich(
                      TextSpan(
                        style: TextStyle(fontSize: 32,fontWeight: FontWeight.w500,color: Color(0xff111827)),
                        children: [
                          TextSpan(text: "Find a job, and "),
                          TextSpan(text: "start building ",style:TextStyle(fontSize: 32,fontWeight: FontWeight.w500,color: Color(0xff3366FF)) ),
                          TextSpan(text: "your career from now on"),
                        ]
                      ),

                    ),
                  ),
                  const SizedBox(height: 10,),
                  const SizedBox(
                    width: 300,
                    child: Text('Explore over 25,924 available job roles and upgrade your operator now.',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Color(0xff6B7280))),
                  ),
                  const SizedBox(height: 50,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 8,
                        width: 8,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff3366FF)
                        ),
                      ),
                      const SizedBox(width: 5,),
                      Container(
                        height: 6,
                        width: 6,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffADC8FF)
                        ),
                      ),
                      const SizedBox(width: 5,),
                      Container(
                        height: 6,
                        width: 6,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffADC8FF)
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30,),
                  SizedBox(
                    width: double.maxFinite,
                    height: 50,
                    child: OutlinedButton(

                      onPressed: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Two()));
                      },
                      style: ButtonStyle(
                          backgroundColor:
                          WidgetStateProperty.all(const Color(0xff3366FF)),
                      ),
                        child: const Text("Next",
                          style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Color(0xffffffff)),
                        ),

                    ),
                  )
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}
