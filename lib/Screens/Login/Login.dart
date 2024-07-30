import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jopsque0/Screens/Forgot%20Password/ForgotPassword/ForgotPassword.dart';
import '../CreatAccount/SignUp/CreateAccount.dart';
import '../SplashScreen/Slider Screens/prelog.dart';
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}
class _LoginState extends State<Login>  {
  final emailCon =TextEditingController();
  final passCon =TextEditingController();
  final formKey =GlobalKey<FormState>();
  var c = const Color(0xff9CA3AF);
  var e = Colors.white;
  var p = const Color(0xff9CA3AF);
  var buttonTextColor = const Color(0xff6B7280);
  var buttonBackgroundColor = const Color(0xffD1D5DB);
  late bool passwordVisible;
  bool checked = false;


  @override
  void initState() {
    super.initState();
    passwordVisible = false;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                          builder: (context) => const Prelog()));
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
                  const Text("Login",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w500,color: Color(0xff111827)),),
                  const Text("Please login to find your dream job",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Color(0xff6B7280)),),
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
                      SizedBox(
                        child: TextFormField(
                          textInputAction: TextInputAction.go,
                          controller: passCon,
                          obscureText: !passwordVisible,
                          onChanged: (data){
                            if(data.length>7){
                              setState(() {
                                p = const Color(0xff292D32);
                              });
                            }else{
                              setState(() {
                                p = const Color(0xff9CA3AF);
                              });
                            }
                          },
                          decoration: InputDecoration(
                            prefixIcon:  Icon(Icons.lock_outline,color: p,),
                            suffixIcon: IconButton(
                              icon: Icon(
                                passwordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: p,
                              ),
                              onPressed: () {

                                setState(() {
                                  passwordVisible = !passwordVisible;
                                });
                              },
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8)),
                            hintText: "Password",
                            hintStyle: const TextStyle(
                                color: Color(0xff9CA3AF),
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                          validator: (data){
                            if(data!.isEmpty){
                              return "Please enter Password";
                            }
                            if(data.length<7){
                              return "Password must be at least 8 characters";
                            }
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                     Row(
                       children: [
                         SizedBox(
                           height: 20,
                           width: 20,
                           child: Checkbox(value: checked, onChanged: (value){
                             setState(() {
                               checked =value!;
                             });
                           },
                             activeColor: const Color(0xff3366FF),
                             side: const BorderSide(
                               color: Color(0xff9CA3AF)
                             ),
                             shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(5.0),
                             ),

                           ),
                         ),
                         const SizedBox(width: 10,),
                         const Text("Remember me",style: TextStyle(color: Color(0xff1F2937),fontSize: 14,fontWeight: FontWeight.w400),),
                         const Spacer(),
                         TextButton(onPressed: (){
                           Navigator.push(
                               context,
                               MaterialPageRoute(
                                   builder: (context) => const ForgotPassword()));
                         },
                           style: TextButton.styleFrom(
                               padding: EdgeInsets.zero,
                               minimumSize: const Size(50, 30),
                               tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                               alignment: Alignment.centerLeft), child: const Text("Forgot Password?",style: TextStyle(color: Color(0xff3366FF),fontWeight: FontWeight.w500,fontSize: 14),),
                         )
                       ],
                     )

                    ],
                  )
                  ),
                  const SizedBox(height: 100,),

                ],
              ),
              Column(children: [
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account?  ",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color:Color(0xff9CA3AF) ),),
                    TextButton(onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CreateAccount()));
                    },
                      style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          minimumSize: const Size(50, 30),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          alignment: Alignment.centerLeft), child: const Text("Register",style: TextStyle(color: Color(0xff3366FF),fontWeight: FontWeight.w500,fontSize: 14),),
                    )
                  ],),
                const SizedBox(height: 20,),
                SizedBox(
                  width: double.maxFinite,
                  height: 50,
                  child: OutlinedButton(
                    onPressed: checkForData() ?() async {
                      if(formKey.currentState!.validate()){
                        print("great");
                      }
                    }:null,
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(checkForData()?const Color(0xff3366FF):buttonBackgroundColor),
                    ),
                    child: Text("Login",style: TextStyle(fontSize:16,fontWeight: FontWeight.w500 ,color:checkForData()?const Color(0xffffffff) :buttonTextColor),),
                  ),
                ),
                const SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(child: Container(
                        margin:const EdgeInsets.only( right: 20.0),
                        child: const Divider(color: Color(0xffD1D5DB),)
                    )),
                    const Text("Or Login With Account",style: TextStyle(fontWeight: FontWeight.w400,color: Color(0xff6B7280),fontSize: 14),),
                    Expanded(child: Container(
                        margin: const EdgeInsets.only( left: 20.0),
                        child: const Divider(color: Color(0xffD1D5DB),))),
                  ],
                ),
                const SizedBox(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: (){},
                      child: Container(
                        height: 45,
                        width: 140,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                                color: const Color(0xffD1D5DB)

                            )
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("lib/Consts/Logo/google.png"),
                            const SizedBox(width: 10,),
                            const Text("Google",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0xff363F5E)),)
                          ],),
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: (){},
                      child: Container(
                        height:45 ,
                        width: 140,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                                color: const Color(0xffD1D5DB)
                            )
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("lib/Consts/Logo/Facebook.png"),
                            const SizedBox(width: 10,),
                            const Text("Facebook",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0xff363F5E)),)
                          ],),

                      ),
                    ),
                  ],
                )
              ],)
            ],
          ),
        ),
      ),
    );
  }
  checkForData(){
    if( emailCon.text.isEmpty && passCon.text.isEmpty){
      return false;
    }else {
      return true;
    }
  }
}
