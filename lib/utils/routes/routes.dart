import 'package:SikapApp/view/home/home.dart';
import 'package:flutter/material.dart';
// import 'package:taskmanagement/pages/staffs/individual_staff_details.dart';
// import 'package:taskmanagement/pages/staffs/individual_staff_details.dart';
import 'package:SikapApp/view/konsultasi/konsultasi.dart';

const KonsultasiRoute = "/konsultasi";
const HomeRoute = "/home";

RouteFactory routes() {
  return (settings) {
    final Map<String, dynamic> arguments = settings.arguments;
    Widget screen;
    switch (settings.name) {
      case HomeRoute:
        screen = Home();
        break;
      case KonsultasiRoute:
        screen = Konsultasi();
        break;
      default:
        return null;
    }
    return MaterialPageRoute(builder: (BuildContext context) => screen);
  };
}
