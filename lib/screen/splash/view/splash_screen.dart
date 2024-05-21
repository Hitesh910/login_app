import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../utils/provider/provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  @override
  void initState() {
    super.initState();
    context.read<Login>().getCheck();
    Future.delayed(
      const Duration(seconds: 5),
      () {
        if (context.read<Login>().check == true)
        {
          Navigator.pushReplacementNamed(context, 'home');
        }
        else
        {
          Navigator.pushReplacementNamed(context, 'contact');
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.network(
            "https://static.vecteezy.com/system/resources/thumbnails/023/654/784/small/golden-logo-template-free-png.png"),
      ),
    );
  }
}
