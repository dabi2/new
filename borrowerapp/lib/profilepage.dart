import 'package:borrowerapp/colors.dart';
import 'package:flutter/material.dart';
import 'bottomnavigator.dart';

class Userprofile extends StatefulWidget {
  const Userprofile({super.key});

  @override
  State<Userprofile> createState() => _UserprofileState();
}

class _UserprofileState extends State<Userprofile> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Row(
            children: [
              Text(
                'Payment Mode',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        actions: [
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications,
                    color: Colors.white,
                    size: 20,
                  )),
              SizedBox(
                width: 20,
              ),
            ],
          ),
        ],
        backgroundColor: MainColors.appbar,
        elevation: 8.0,
      ),
      body: Container(),
      bottomNavigationBar: BottomNavigationBarCustom(
        onItemTapped: _onItemTapped,
        selectedIndex: _selectedIndex,
      ),
    );
  }
}