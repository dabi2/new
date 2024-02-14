import 'package:borrowerapp/colors.dart';
import 'package:borrowerapp/loanpage.dart';
import 'package:flutter/material.dart';
import 'landingpage.dart';


class BottomNavigationBarCustom extends StatefulWidget {
  final void Function(int) onItemTapped;
  final int selectedIndex;

   const BottomNavigationBarCustom({
    Key? key,
    required this.onItemTapped ,
    required this.selectedIndex,
  }) : super(key: key);

  @override
  State<BottomNavigationBarCustom> createState() => _BottomNavigationBarCustomState();
}

class _BottomNavigationBarCustomState extends State<BottomNavigationBarCustom> {
  int myIndex = 0;
  List<Widget> widgetList = [
    const Loan_Page(),
    const HomePage(),
    
  ];
  @override
  Widget build(BuildContext context) {
    
    return  BottomNavigationBar(
      onTap:(index) {
        setState(() {
          myIndex = index;
        });
      },
      
      backgroundColor: MainColors.appbar,
      unselectedItemColor: Colors.white,
      items: [
        BottomNavigationBarItem(
          label: 'Home',
          icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          label: 'Loan',
          icon: Icon(Icons.monetization_on_outlined),
        ),
        BottomNavigationBarItem(
          
          label: 'Profile',
          icon: Icon(Icons.person),
          
        ),
      ],
      onTap: widget.onItemTapped,
      currentIndex: widget.selectedIndex,
      selectedItemColor: Colors.black,
      iconSize: 30,     
    );
    
  }
}


 