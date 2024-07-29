import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../GetStarted/GetStarted.dart';
import 'components.dart';

class  PreferredLocation extends StatefulWidget {
  const  PreferredLocation({super.key});

  @override
  State< PreferredLocation> createState() => _PreferredLocationState();
}

class _PreferredLocationState extends State<PreferredLocation> with TickerProviderStateMixin {
bool isOfficeSelected = true;
bool isRemoteSelected = false;
bool us =false;
bool mal =false;
bool sin =false;
bool indo =false;
bool phil =false;
bool pol =false;
bool india =false;
bool vit =false;
bool ch =false;
bool ca =false;
bool ksa =false;
bool ar =false;
bool br =false;
var buttonTextColor = const Color(0xff6B7280);
var buttonBackgroundColor = const Color(0xffD1D5DB);



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
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Where are you prefefred Location?",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff111827)),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Let us know, where is the work location you want at this time, so we can adjust it.",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff737379)),
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(height: 20,),
             Stack(
               children: [
                 Center(
                   child: Container(height: 46,
                   width: 320,
                   decoration: BoxDecoration(
                     color: Color(0xffF4F4F5),
                     borderRadius: BorderRadius.circular(100)
                   ),),
                 ),
                 Center(
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       myTab(onPressed: () {
                        if(isOfficeSelected==false){
                          setState(() {
                            isOfficeSelected=true;
                            isRemoteSelected=false;
                            reset();
                          });
                        }
                      }, checked: isOfficeSelected, workLocation: 'Work From Office',),
                       myTab(onPressed: () {
                         if(isRemoteSelected==false){
                           setState(() {
                             isOfficeSelected=false;
                             isRemoteSelected=true;
                             reset();
                           });
                         }
                       }, checked: isRemoteSelected, workLocation: 'Remote Work',),
                     ],
                   ),
                 )
               ],
             ),
              const SizedBox(height: 20,),
              const Text("Select the country you want for your job",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: Color(0xff737379)),),
              const SizedBox(height: 20,),
              isOfficeSelected ?  Wrap(
                spacing:10,
                children: [
               myChip( checked: us, flagLocation: 'lib/Consts/Assets/flags/Ellipse 804.png', country: 'United States'
                  , onPressed: (bool newState) {
                  setState(() {
                    us =newState;
                  });
                },
                ),
               myChip( checked: mal, flagLocation: 'lib/Consts/Assets/flags/mal.png', country: 'Malaysia'
                    , onPressed: (bool newState) {
                      setState(() {
                        mal =newState;
                      });
                    },
                  ),
                  myChip( checked: sin, flagLocation: 'lib/Consts/Assets/flags/sin.png', country: 'Singapore'
                    , onPressed: (bool newState) {
                      setState(() {
                        sin =newState;
                      });
                    },
                  ),
                  myChip( checked: indo, flagLocation: 'lib/Consts/Assets/flags/Indonesia.png', country: 'Indonesia'
                    , onPressed: (bool newState) {
                      setState(() {
                        indo =newState;
                      });
                    },
                  ),
                  myChip(checked: phil, flagLocation: 'lib/Consts/Assets/flags/Philiphines.png', country: 'Philiphines'
                    , onPressed: (bool newState) {
                      setState(() {
                        phil =newState;
                      });
                    },
                  ),
                  myChip( checked: pol, flagLocation: 'lib/Consts/Assets/flags/Polandia.png', country: 'Poland'
                    , onPressed: (bool newState) {
                      setState(() {
                        pol =newState;
                      });
                    },
                  ),
                  myChip( checked: vit, flagLocation: 'lib/Consts/Assets/flags/Vietnam.png', country: 'Vietnam'
                    , onPressed: (bool newState) {
                      setState(() {
                        vit =newState;
                      });
                    },
                  ),
                  myChip( checked: india, flagLocation: 'lib/Consts/Assets/flags/India.png', country: 'India'
                    , onPressed: (bool newState) {
                      setState(() {
                        india =newState;
                      });
                    },
                  ),
                  myChip( checked: ch, flagLocation: 'lib/Consts/Assets/flags/China.png', country: 'China'
                    , onPressed: (bool newState) {
                      setState(() {
                        ch =newState;
                      });
                    },
                  ),
                  myChip( checked: ca, flagLocation: 'lib/Consts/Assets/flags/Canada.png', country: 'Canada'
                    , onPressed: (bool newState) {
                      setState(() {
                        ca =newState;
                      });
                    },
                  ),
                  myChip( checked: ksa, flagLocation: 'lib/Consts/Assets/flags/Saudi Arabia.png', country: 'Saudi Arabia'
                    , onPressed: (bool newState) {
                      setState(() {
                        ksa =newState;
                      });
                    },
                  ),
                  myChip( checked: ar, flagLocation: 'lib/Consts/Assets/flags/Argentina.png', country: 'Argentina'
                    , onPressed: (bool newState) {
                      setState(() {
                        ar =newState;
                      });
                    },
                  ),
                  myChip( checked: br, flagLocation: 'lib/Consts/Assets/flags/Brazil.png', country: 'Brazil'
                    , onPressed: (bool newState) {
                      setState(() {
                        br =newState;
                      });
                    },
                  ),
              ],
              ):const Column(
                children: [
                  Text("2")
                ],
              ),
              Row(
                children: [
                  const Spacer(),
                  checkForAnySelected()
                      ? const SizedBox(height: 20,)
                      : const Text(
                    "At least one location should be selected",
                    style: TextStyle(
                        color: Color(0xffB71519),
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                  const Spacer(),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.maxFinite,
                height: 50,
                child: OutlinedButton(
                  onPressed: checkForAnySelected()
                      ? () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const GetStarted()));
                  }
                      : null,
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(checkForAnySelected()
                        ? const Color(0xff3366FF)
                        : buttonBackgroundColor),
                  ),
                  child: Text(
                    "Next",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: checkForAnySelected()
                            ? const Color(0xffffffff)
                            : buttonTextColor),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


reset (){
    setState(() {
      br = ar = ksa = ca = ch = vit =india =pol = phil = indo = sin = us = mal=false;
    });
}
checkForAnySelected(){
    if(br || ar || ksa || ca || ch || vit || india || pol || phil || indo || sin || us || mal ==true){
      return true;
    }else
      return false;
}
}
