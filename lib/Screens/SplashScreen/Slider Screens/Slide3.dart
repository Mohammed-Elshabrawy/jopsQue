import 'package:flutter/material.dart';
import 'package:jopsque0/Screens/SplashScreen/Slider%20Screens/prelog.dart';
class Three extends StatefulWidget {
  const Three({super.key});

  @override
  State<Three> createState() => _oneState();
}

class _oneState extends State<Three> {
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
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Prelog()));

                }, child: Text("Skip",style:TextStyle(color: Color(0xff6B7280)),))
              ],),
            ),
            Image.asset('lib/Consts/Assets/Background3.png'),
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
                            TextSpan(text: "Get the best "),
                            TextSpan(text: "choice for the job ",style:TextStyle(fontSize: 32,fontWeight: FontWeight.w500,color: Color(0xff3366FF)) ),
                            TextSpan(text: "you've always dreamed of"),
                          ]
                      ),

                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: 300,
                    child: Text('The better the skills you have, the greater the good job opportunities for you.',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Color(0xff6B7280))),
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
                    ],
                  ),
                  SizedBox(height: 30,),
                  Container(
                    width: double.maxFinite,
                    height: 50,
                    child: OutlinedButton(

                      onPressed: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Prelog()));

                      },
                      child: Text("Get Started",
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
