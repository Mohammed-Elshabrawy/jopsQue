import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jopsque0/Screens/Forgot%20Password/ForgotPassword/CheckUrEmail.dart';
import 'package:jopsque0/Screens/Login/Login.dart';
class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final emailCon =TextEditingController();
  final formKey =GlobalKey<FormState>();

  var c = const Color(0xff9CA3AF);
  var e = Colors.white;
  var buttonTextColor = const Color(0xff6B7280);
  var buttonBackgroundColor = const Color(0xffD1D5DB);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 15,),
              Row(children: [
                IconButton(onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Login()));
                }, icon: const Icon(Icons.arrow_back_outlined,size: 24,),padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),style: const ButtonStyle(tapTargetSize: MaterialTapTargetSize.shrinkWrap,),),
                const Spacer(),
                SizedBox(
                    height:20 ,
                    child: Image.asset("lib/Consts/Assets/Logo.png")),
              ],),
              const SizedBox(height: 40,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Reset Password",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w500,color: Color(0xff111827)),),
                  const Text("Enter the email address you used when you joined and we’ll send you instructions to reset your password.",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Color(0xff6B7280)),),
                  const SizedBox(height: 40,),
                  Form(
                      key: formKey, child:
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        child: TextFormField(
                          textInputAction: TextInputAction.next,
                          inputFormatters: [
                            FilteringTextInputFormatter.deny(RegExp(r'[\u0600-\u06FF]'))
                          ],
                          controller: emailCon,
                          keyboardType: TextInputType.emailAddress,
                          onChanged:(data){
                            final regex =RegExp(r"[^@]+@[^.]+\..+");
                            if(regex.hasMatch(data)){
                              setState(() {
                                c = const Color(0xff111827);
                              });
                              setState(() {
                                e = const Color(0xff111827);
                              });
                            }else {
                              setState(() {
                                c =  const Color(0xff9CA3AF);
                              });
                              setState(() {
                                e = Colors.white;
                              });
                            }
                          },
                          style:  const TextStyle(
                              color: Color(0xff111827),
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                          decoration: InputDecoration(
                            prefixIcon:  Icon(Icons.email_outlined,color: c,),
                            suffixIcon: Icon(Icons.done,color: e,),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8)),
                            hintText: "Email",
                            hintStyle: const TextStyle(
                                color: Color(0xff9CA3AF),
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                          validator: (data){
                            if(data!.isEmpty){
                              return "Please enter Email";
                            }
                            final regex =RegExp(r"[^@]+@[^.]+\..+");
                            if(!regex.hasMatch(data)){
                              return 'Enter a valid Email';
                            }
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                    ],
                  )
                  ),
                  const SizedBox(height: 100,),

                ],
              ),
              const Spacer(),
              Column(children: [
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    const Text("You remembered your password  ",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color:Color(0xff9CA3AF) ),),
                    TextButton(onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Login()));
                    },
                      style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          minimumSize: const Size(50, 30),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          alignment: Alignment.centerLeft), child: const Text("Login",style: TextStyle(color: Color(0xff3366FF),fontWeight: FontWeight.w500,fontSize: 14),),
                    )
                  ],),
                const SizedBox(height: 20,),
                SizedBox(
                  width: double.maxFinite,
                  height: 50,
                  child: OutlinedButton(
                    onPressed: checkForData() ?() async {
                      if(formKey.currentState!.validate()){ Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CheckUrEmail()));
                      }
                    }:null,
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(checkForData()?const Color(0xff3366FF):buttonBackgroundColor),
                    ),
                    child: Text("Request password reset",style: TextStyle(fontSize:16,fontWeight: FontWeight.w500 ,color:checkForData()?const Color(0xffffffff) :buttonTextColor),),
                  ),
                ),
                const SizedBox(height: 20,),

              ],
              )
            ],
          ),
        ),
      ),
    );
  }
  checkForData(){
    if(emailCon.text.isEmpty){
      return false;
    }else {
      return true;
    }
  }
}
