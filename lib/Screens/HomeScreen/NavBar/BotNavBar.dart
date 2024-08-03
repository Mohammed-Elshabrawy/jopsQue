import 'package:flutter/material.dart';
import 'package:jopsque0/Screens/HomeScreen/HomeScreen/Home.dart';
class BotNavBar extends StatefulWidget {
  final int currentIndex;
   const BotNavBar({super.key,required this.currentIndex});

  @override
  State<BotNavBar> createState() => _BotNavBarState(currentIndex: currentIndex);
}

class _BotNavBarState extends State<BotNavBar> {
  
  int currentIndex;
  _BotNavBarState({required this.currentIndex});
  List screens =[
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        body:screens[currentIndex] ,
        bottomNavigationBar: BottomNavigationBar(
          elevation: 100,
          backgroundColor:Colors.white,
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          selectedItemColor:const Color(0xff3366FF),
          showUnselectedLabels: true,
          showSelectedLabels: true,
          onTap: (index) => setState(()=> currentIndex = index),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home,),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat_outlined),
              label: "Messages",

            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined),
              label: "Applied",

            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_border_outlined),
              label: "Saved",

            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
