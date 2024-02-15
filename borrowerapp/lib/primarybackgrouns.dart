import 'package:flutter/material.dart';

class Primarybackgroundimage extends StatelessWidget {
  const Primarybackgroundimage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('images/loanpage.png'),
            fit: BoxFit.fill,
            )
          ),
        ),
      ],
    );
  }
}