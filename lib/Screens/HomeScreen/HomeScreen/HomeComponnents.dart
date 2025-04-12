import 'package:flutter/material.dart';

import '../Jop info/JopInfo.dart';

class WelcomeMessageSearchBar extends StatelessWidget{
  const WelcomeMessageSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Hi, Rafi Dian👋",style: TextStyle(color: Color(0xff111827),fontSize: 24,fontWeight: FontWeight.w500)),
                SizedBox(height: 10,),
                Text("Create a better future for yourself here",style: TextStyle(color: Color(0xff6B7280),fontSize: 14,fontWeight: FontWeight.w500)),
              ],
            ),
            const Spacer(),
            SizedBox(
              height: 48,
              width: 48,
              child: IconButton(onPressed: (){}, icon: const Icon(Icons.notifications_none_outlined,size: 24,),iconSize: 48,style: ButtonStyle(
                  shape:  WidgetStateProperty.all(const CircleBorder(side: BorderSide(color: Color(0xffD1D5DB))))
              ),),
            )
          ],
        ),
        const SizedBox(height: 20,),
        SizedBox(
          height: 48,
          child: SearchBar(
            onTapOutside: (event){
              FocusManager.instance.primaryFocus?.unfocus();
            },
            backgroundColor: WidgetStateProperty.all(Colors.white),
            leading: const Icon(Icons.search_outlined,),
            padding:WidgetStateProperty.all(const EdgeInsets.symmetric(horizontal: 10)),
            hintText: "Search....",
            hintStyle: WidgetStateProperty.all(const TextStyle(fontWeight: FontWeight.w400,color: Color(0xff9CA3AF),fontSize: 14)),
          ),
        )
      ],
    );
  }

}

class SuggestedJob extends StatelessWidget{
  const SuggestedJob({super.key});

  @override
  Widget build(BuildContext context) {
   return Column(
     children: [
       Row(
         children: [
           const Text("Suggested Job",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Color(0xff111827)),),
           const Spacer(),
           TextButton(onPressed: (){}, child: const Text("View all",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color:Color(0xff3366FF) ),))
         ],
       ),
       const SizedBox(height: 10,),
       SingleChildScrollView(
         scrollDirection: Axis.horizontal,
         child: Row(
           children: [
             GestureDetector(
               onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context) => const JopInfo()));
               },
               child: Container(
                 decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(12),
                     color: const Color(0xff091A7A)
                 ),
                 height: 200,
                 width: 300,
                 padding: const EdgeInsets.all(20),
                 child: Column(
                   children: [
                     Row(
                       children: [
                         Image.asset("lib/Consts/Logo/Zoom Logo.png"),
                         const Spacer(),
                         const Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text("Product Designer",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.white),),
                             SizedBox(height: 5,),
                             Text("Zoom • United States",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff9CA3AF)),),
                           ],
                         ),
                         const Spacer(),
                         IconButton(onPressed: (){},iconSize: 24, icon: const Icon(Icons.bookmark_border_outlined,color: Colors.white,size: 24,))

                       ],
                     ),
                     Spacer(),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Chip(label: Text("Fulltime",style: TextStyle(color: Colors.white),),
                             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),backgroundColor: const Color(
                                 0xff2c3a8c)),
                         SizedBox(width: 5,),
                         Chip(label: Text("Remote",style: TextStyle(color: Colors.white),),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
                             backgroundColor: Color(0xff2c3a8c)),
                         SizedBox(width: 5,),
                         Chip(label: Text("Design",style: TextStyle(color: Colors.white),),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),backgroundColor: Color(0xff2c3a8c)),

                       ],
                     ),
                     Spacer(),
                     Row(
                       crossAxisAlignment: CrossAxisAlignment.end,
                       children: [
                         const Text("\$12K-15K",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 24),),
                         const Text("/Month",style: TextStyle(color: Color(0xff9CA3AF),fontWeight: FontWeight.w500,fontSize: 12),),
                         const Spacer(),
                         OutlinedButton(onPressed: (){},style: ButtonStyle(backgroundColor: WidgetStateProperty.all(Color(0xff3366FF))), child: Text("Apply now",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12,color: Colors.white),))

                       ],
                     )
                   ],
                 ),
               ),
             ),
             const SizedBox(width: 10,),
             Container(
               decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(12),
                   color: const Color(0xffF4F4F5)
               ),
               height: 200,
               width: 300,
               padding: const EdgeInsets.all(20),
               child: Column(
                 children: [
                   Row(
                     children: [
                       Image.asset("lib/Consts/Logo/Slack Logo.png"),
                       const Spacer(),
                       const Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text("Product Designer",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Color(0xff111827)),),
                           SizedBox(height: 5,),
                           Text("Slack • United States",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff374151)),),
                         ],
                       ),
                       const Spacer(),
                       IconButton(onPressed: (){},iconSize: 24, icon: const Icon(Icons.bookmark_border_outlined,color: Color(0xff1F2937),size: 24,))

                     ],
                   ),
                   Spacer(),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Chip(label: Text("Fulltime",style: TextStyle(color: Color(0xff3366FF)),),
                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),backgroundColor: const Color(
                               0xffD6E4FF)),
                       SizedBox(width: 5,),
                       Chip(label: Text("Remote",style: TextStyle(color: Color(0xff3366FF)),),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
                           backgroundColor: Color(0xffD6E4FF)),
                       SizedBox(width: 5,),
                       Chip(label: const Text("Design",style: TextStyle(color: Color(0xff3366FF)),),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),backgroundColor: const Color(0xffD6E4FF)),

                     ],
                   ),
                   Spacer(),
                   Row(
                     crossAxisAlignment: CrossAxisAlignment.end,
                     children: [
                       const Text("\$12K-15K",style: TextStyle(color: Color(0xff111827),fontWeight: FontWeight.w500,fontSize: 24),),
                       const Text("/Month",style: TextStyle(color: Color(0xff9CA3AF),fontWeight: FontWeight.w500,fontSize: 12),),
                       const Spacer(),
                       OutlinedButton(onPressed: (){},style: ButtonStyle(backgroundColor: WidgetStateProperty.all(Color(0xff3366FF))), child: Text("Apply now",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12,color: Colors.white),))

                     ],
                   )
                 ],
               ),
             ),
           ],
         ),
       )
     ],
   );
  }

}

class RecentJop extends StatelessWidget{
  const RecentJop({super.key});

  @override
  Widget build(BuildContext context) {
   return Column(
     children: [
       Row(
         children: [
           const Text("Recent Job",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Color(0xff111827)),),
           const Spacer(),
           TextButton(onPressed: (){}, child: Text("View all",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color:Color(0xff3366FF) ),))
         ],
       ),
       SizedBox(height: 10,),
       Container(
         height: 100,
         child: Column(
           children: [
             Row(
               children: [
                 Image.asset("lib/Consts/Logo/Twitter Logo.png"),
                 const Spacer(),
                 const Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text("Senior UI Designer",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Color(0xff111827)),),
                     SizedBox(height: 5,),
                     Text("Twitter • Jakarta, Indonesia ",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff374151)),),
                   ],
                 ),
                 const Spacer(),
                 IconButton(onPressed: (){},iconSize: 24, icon: Icon(Icons.bookmark,color: Color(0xff3366FF),size: 24,))

               ],
             ),
             Spacer(),
             Row(
               crossAxisAlignment: CrossAxisAlignment.end,
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 SizedBox(height: 35,
                   child: Chip(label: const Text("Fulltime",style: TextStyle(color: Color(0xff3366FF),fontSize: 12),),
                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),backgroundColor: const Color(
                           0xffD6E4FF)),
                 ),
                 const SizedBox(width: 5,),
                 SizedBox( height: 35,
                   child: Chip(label: const Text("Remote",style: TextStyle(color: Color(0xff3366FF)),),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
                       backgroundColor: const Color(0xffD6E4FF)),
                 ),
                 const SizedBox(width: 5,),
                 SizedBox(height: 35, child: Chip(label: const Text("Senior",style: TextStyle(color: Color(0xff3366FF)),),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),backgroundColor: Color(0xffD6E4FF))),
                 const Spacer(),
                 const Text("\$15K",style: TextStyle(color: Color(0xff2E8E18),fontWeight: FontWeight.w500,fontSize: 16),),
                 const Text("/Month",style: TextStyle(color: Color(0xff9CA3AF),fontWeight: FontWeight.w500,fontSize: 12),),
               ],
             ),
           ],
         ),
       ),
       SizedBox(height: 10,),
       Divider(),
       SizedBox(height: 10,),
       Container(
         height: 100,
         child: Column(
           children: [
             Row(
               children: [
                 Image.asset("lib/Consts/Logo/Discord Logo.png"),
                 const Spacer(),
                 const Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text("Senior UX Designer",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Color(0xff111827)),),
                     SizedBox(height: 5,),
                     Text("Discord • Jakarta, Indonesia ",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff374151)),),
                   ],
                 ),
                 const Spacer(),
                 IconButton(onPressed: (){},iconSize: 24, icon: Icon(Icons.bookmark_outline,color: Color(0xff111827),size: 24,))

               ],
             ),
             Spacer(),
             Row(
               crossAxisAlignment: CrossAxisAlignment.end,
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 SizedBox(height: 35,
                   child: Chip(label: const Text("Fulltime",style: TextStyle(color: Color(0xff3366FF),fontSize: 12),),
                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),backgroundColor: const Color(
                           0xffD6E4FF)),
                 ),
                 const SizedBox(width: 5,),
                 SizedBox( height: 35,
                   child: Chip(label: const Text("Remote",style: TextStyle(color: Color(0xff3366FF)),),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
                       backgroundColor: const Color(0xffD6E4FF)),
                 ),
                 const SizedBox(width: 5,),
                 SizedBox(height: 35, child: Chip(label: const Text("Senior",style: TextStyle(color: Color(0xff3366FF)),),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),backgroundColor: Color(0xffD6E4FF))),
                 const Spacer(),
                 const Text("\$15K",style: TextStyle(color: Color(0xff2E8E18),fontWeight: FontWeight.w500,fontSize: 16),),
                 const Text("/Month",style: TextStyle(color: Color(0xff9CA3AF),fontWeight: FontWeight.w500,fontSize: 12),),
               ],
             ),
           ],
         ),
       ),
       Divider(),
       SizedBox(height: 10,),
       Container(
         height: 100,
         child: Column(
           children: [
             Row(
               children: [
                 Image.asset("lib/Consts/Logo/Twitter Logo.png"),
                 const Spacer(),
                 const Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text("Senior UI Designer",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Color(0xff111827)),),
                     SizedBox(height: 5,),
                     Text("Twitter • Jakarta, Indonesia ",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff374151)),),
                   ],
                 ),
                 const Spacer(),
                 IconButton(onPressed: (){},iconSize: 24, icon: Icon(Icons.bookmark,color: Color(0xff3366FF),size: 24,))

               ],
             ),
             Spacer(),
             Row(
               crossAxisAlignment: CrossAxisAlignment.end,
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 SizedBox(height: 35,
                   child: Chip(label: const Text("Fulltime",style: TextStyle(color: Color(0xff3366FF),fontSize: 12),),
                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),backgroundColor: const Color(
                           0xffD6E4FF)),
                 ),
                 const SizedBox(width: 5,),
                 SizedBox( height: 35,
                   child: Chip(label: const Text("Remote",style: TextStyle(color: Color(0xff3366FF)),),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
                       backgroundColor: const Color(0xffD6E4FF)),
                 ),
                 const SizedBox(width: 5,),
                 SizedBox(height: 35, child: Chip(label: const Text("Senior",style: TextStyle(color: Color(0xff3366FF)),),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),backgroundColor: Color(0xffD6E4FF))),
                 const Spacer(),
                 const Text("\$15K",style: TextStyle(color: Color(0xff2E8E18),fontWeight: FontWeight.w500,fontSize: 16),),
                 const Text("/Month",style: TextStyle(color: Color(0xff9CA3AF),fontWeight: FontWeight.w500,fontSize: 12),),
               ],
             ),
           ],
         ),
       ),
       SizedBox(height: 10,),
     ],
   );
  }

}