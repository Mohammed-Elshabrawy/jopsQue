import 'package:flutter/material.dart';
import 'HomeComponnents.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final searchCon =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                WelcomeMessageSearchBar(),
                   Column(
                    children: [
                      SizedBox(height: 10,),
                      SuggestedJob(),
                      SizedBox(height: 10,),
                      RecentJop(),
                    ],
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
