import 'package:SikapApp/view/login/login.dart';
import 'package:flutter/material.dart';
import 'package:SikapApp/view/login/login.dart';
import 'package:SikapApp/utils/routes/routes.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SIKAP APP',
      theme: ThemeData(primarySwatch: Colors.red, fontFamily: "Montserrat"),
      home: Login(),
      initialRoute: '/',
      onGenerateRoute: routes(),
    );
  }
}
