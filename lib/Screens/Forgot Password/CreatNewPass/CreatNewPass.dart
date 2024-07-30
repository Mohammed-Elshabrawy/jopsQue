import 'package:flutter/material.dart';
import 'Done.dart';
class CreateNewPass extends StatefulWidget {
  const CreateNewPass({super.key});

  @override
  State<CreateNewPass> createState() => _CreateNewPassState();
}

class _CreateNewPassState extends State<CreateNewPass> {
  final passCon =TextEditingController();
  final passConSec =TextEditingController();
  final formKey =GlobalKey<FormState>();
  var p = const Color(0xff9CA3AF);
  var pC = const Color(0xff9CA3AF);
  var buttonTextColor = const Color(0xff6B7280);
  var buttonBackgroundColor = const Color(0xffD1D5DB);
  late bool passwordVisible;
  late bool passwordVisibleSec;
  @override
  void initState() {
    super.initState();
    passwordVisible = false;
    passwordVisibleSec =false;
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
                const Spacer(),
                SizedBox(
                    height:20 ,
                    child: Image.asset("lib/Consts/Assets/Logo.png")),
              ],),
              const SizedBox(height: 40,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Create new password",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w500,color: Color(0xff111827)),),
                  const Text("Set your new password so you can login and access Jobsque",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Color(0xff6B7280)),),
                  const SizedBox(height: 40,),
                  Form(
                      key: formKey, child:
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        child: TextFormField(
                          textInputAction: TextInputAction.next,
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
                            hintText: "NewPassword",
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
                      SizedBox(
                        child: TextFormField(
                          textInputAction: TextInputAction.go,
                          controller: passConSec,
                          obscureText: !passwordVisibleSec,
                          onChanged: (data){
                            if(data.length>7 && passCon.text == passConSec.text){
                              setState(() {
                                pC = const Color(0xff292D32);
                              });
                            }else{
                              setState(() {
                                pC = const Color(0xff9CA3AF);
                              });
                            }
                          },
                          decoration: InputDecoration(
                            prefixIcon:  Icon(Icons.lock_outline,color: pC,),
                            suffixIcon: IconButton(
                              icon: Icon(
                                passwordVisibleSec
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: pC,
                              ),
                              onPressed: () {
                                setState(() {
                                  passwordVisibleSec = !passwordVisibleSec;
                                });
                              },
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8)),
                            hintText: "Reenter New Password",
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
                            if(passCon.text != passConSec.text){
                              return "Passwords do not match";
                            }
                            return null;
                          },
                        ),
                      ),
                    ],
                  )
                  ),
                ],
              ),
              const Spacer(),
              Column(children: [
                SizedBox(
                  width: double.maxFinite,
                  height: 50,
                  child: OutlinedButton(
                    onPressed: checkForData() ?() async {
                      if(formKey.currentState!.validate()){ Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ChangedSuccessfully()));
                      }
                    }:null,
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(checkForData()?const Color(0xff3366FF):buttonBackgroundColor),
                    ),
                    child: Text("Reset password",style: TextStyle(fontSize:16,fontWeight: FontWeight.w500 ,color:checkForData()?const Color(0xffffffff) :buttonTextColor),),
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
    if(passCon.text.isEmpty || passConSec.text.isEmpty){
      return false;
    }else {
      return true;
    }
  }
}
