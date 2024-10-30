import 'package:flutter/material.dart';
import 'package:obsididget/pages/HomePage.dart';

class MainDeligater extends StatelessWidget {
  const MainDeligater({super.key});

  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Center(
        child: HomePage(),
      )
    );
  }
}
