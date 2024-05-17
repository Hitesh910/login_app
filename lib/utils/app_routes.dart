import 'package:flutter/material.dart';
import 'package:login_app/screen/contact/view/contact_screen.dart';
import 'package:login_app/screen/create/view/create_screen.dart';
import 'package:login_app/screen/home/view/home_screen.dart';

Map<String, WidgetBuilder> app_routes = {
  "/": (context) => ConatactScreen(),
  "create": (context) => CreateScreen(),
  "home": (context) => HomeScreen(),
};
