import 'package:flutter/material.dart';
import 'package:jopsque0/Screens/SplashScreen/Slider%20Screens/prelog.dart';

import 'Slide3.dart';
class Two extends StatefulWidget {
  const Two({super.key});

  @override
  State<Two> createState() => _oneState();
}

class _oneState extends State<Two> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(children: [
                Container(
                    height:20 ,
                    child: Image.asset("lib/Consts/Assets/Logo.png")),
                Spacer(),
                TextButton(onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Two()));

                }, child: Text("Skip",style:TextStyle(color: Color(0xff6B7280)),))
              ],),
            ),
            Image.asset('lib/Consts/Assets/Background2.png'),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 300,
                    child: Text.rich(
                      TextSpan(
                          style: TextStyle(fontSize: 32,fontWeight: FontWeight.w500,color: Color(0xff111827)),
                          children: [
                            TextSpan(text: "Hundreds of jobs are waiting for you to "),
                            TextSpan(text: "join together",style:TextStyle(fontSize: 32,fontWeight: FontWeight.w500,color: Color(0xff3366FF)) ),

                          ]
                      ),

                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: 300,
                    child: Text('Immediately join us and start applying for the job you are interested in.',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Color(0xff6B7280))),
                  ),
                  SizedBox(height: 50,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 6,
                        width: 6,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffADC8FF)
                        ),
                      ),
                      SizedBox(width: 5,),
                      Container(
                        height: 8,
                        width: 8,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xff3366FF)
                        ),
                      ),
                      SizedBox(width: 5,),
                      Container(
                        height: 6,
                        width: 6,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffADC8FF)
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30,),
                  Container(
                    width: double.maxFinite,
                    height: 50,
                    child: OutlinedButton(

                      onPressed: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Three()));},
                      child: Text("Next",
                        style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Color(0xffffffff)),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all(Color(0xff3366FF)),
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
