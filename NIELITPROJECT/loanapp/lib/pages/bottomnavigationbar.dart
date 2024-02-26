
import 'package:flutter/material.dart';
import 'loanpage.dart';
import 'homepage.dart';
import 'profilepage.dart';
import 'package:loanapp/colors/color.dart';


class Mybottomnavigationbar extends StatefulWidget {
  const Mybottomnavigationbar({super.key});

  @override
  State<Mybottomnavigationbar> createState() => _MybottomnavigationbarState();
}

class _MybottomnavigationbarState extends State<Mybottomnavigationbar> {
  int currentIndex = 0;
  final screens = [
    const HomePage(),
    const Loanpage(),
    const Profilepage(),
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(      
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        backgroundColor: MainColors.appbar,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.blueGrey,
        showUnselectedLabels: false,
        selectedFontSize: 16,
        currentIndex: currentIndex,
        onTap: (index) => setState(() {
          currentIndex = index;
        }),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.monetization_on_outlined),
            label: 'Loan',
            
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2),
            label: 'Profile',
            ),
        ] ),
    );
  }
}
