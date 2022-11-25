import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _pageController = PageController();
  int _selectedIndex = 0 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index){
          _selectedIndex = index;
          _pageController.animateToPage(
            index,
            duration: const Duration(microseconds: 200),
            curve: Curves.easeIn
          );
        }, items:const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home"
          ),
        BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Home"
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Home"
        ),


      ],
      ),
    );
  }
}
