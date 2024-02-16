import 'landingpage.dart';
import 'package:flutter/material.dart';
import 'colors.dart';
import 'loanpage.dart';
import 'profilepage.dart';

class Mybottomnavigationbar extends StatefulWidget {
  const Mybottomnavigationbar({super.key});

  @override
  State<Mybottomnavigationbar> createState() => _MybottomnavigationbarState();
}

class _MybottomnavigationbarState extends State<Mybottomnavigationbar> {
  int currentIndex = 0;
  final screens = [
    const HomePage(),
    const Loan_Page(),
    const Userprofile(),
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


// import 'package:borrowerapp/colors.dart';

// import 'package:flutter/material.dart';


// class BottomNavigationBarCustom extends StatefulWidget {
//   final void Function(int) onItemTapped;
//   final int selectedIndex;

//    const BottomNavigationBarCustom({
//     Key? key,
//     required this.onItemTapped ,
//     required this.selectedIndex,
//   }) : super(key: key);

//   @override
//   State<BottomNavigationBarCustom> createState() => _BottomNavigationBarCustomState();
// }

// class _BottomNavigationBarCustomState extends State<BottomNavigationBarCustom> {
//   @override
//   Widget build(BuildContext context) {
    
//     return  BottomNavigationBar(
      
//       backgroundColor: MainColors.appbar,
//       unselectedItemColor: Colors.white,
//       items: [
//         BottomNavigationBarItem(
//           label: 'Home',
//           icon: Icon(Icons.home),
//         ),
//         BottomNavigationBarItem(
//           label: 'Loan',
//           icon: Icon(Icons.monetization_on_outlined),
//         ),
//         BottomNavigationBarItem(
          
//           label: 'Profile',
//           icon: Icon(Icons.person),
          
//         ),
//       ],
//       onTap: widget.onItemTapped,
//       currentIndex: widget.selectedIndex,
//       selectedItemColor: Colors.black,
//       iconSize: 30,     
//     );
    
//   }
// }


 