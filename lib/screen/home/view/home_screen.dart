import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // title: Text("Login"),
          ),
      body: const Column(
        children: [
          Center(
            child: Text(
        "Welcome",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
