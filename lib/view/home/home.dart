import 'dart:convert';
import 'package:SikapApp/view/konsultasi/addkonsultasi.dart';
import 'package:SikapApp/view/konsultasi/konsultasi.dart';
import 'package:SikapApp/view/profil/profil.dart';
import 'package:flutter/material.dart';
import 'package:SikapApp/utils/drawer.dart';
import 'package:SikapApp/widgets/custom_button.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String email;
  @override
  void initState() {
    _loadUserData();
    super.initState();
  }

  _loadUserData() async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    var user = jsonDecode(localStorage.getString('user'));

    if (user != null) {
      setState(() {
        email = user['email'];
      });
    }
  }

  PageController _pageController = PageController();

  double currentPage = 0;
  @override
  Widget build(BuildContext context) {
    _pageController.addListener(() {
      setState(() {
        currentPage = _pageController.page;
      });
    });
    return Container(
        child: Scaffold(
      appBar: AppBar(
        title: Text('My Sikap'),
        backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
        centerTitle: true,
      ),
      drawer: Drawers(),
      body: Stack(
        children: <Widget>[
          // Container(
          //   height: 1,
          //   color: Theme.of(context).accentColor,
          // ),

          _mainContent(context),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              barrierDismissible: false,
              context: context,
              builder: (BuildContext context) {
                return Dialog(
                    child: AddKonsultasi(),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12))));
              });
        },
        child: Icon(Icons.add),
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    ));
  }

  Widget _mainContent(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Text(
            "Hi, $email",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),

        Expanded(
            child: PageView(
          controller: _pageController,
          children: <Widget>[Konsultasi()],
        )),
        // Expanded(child: TaskPage()),
      ],
    );
  }
}
