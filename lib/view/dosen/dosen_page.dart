import 'package:flutter/material.dart';
import 'package:SikapApp/utils/drawer.dart';
import 'package:SikapApp/view/dosen/dosen.dart';

class DosenPage extends StatefulWidget {
  @override
  _DosenPageState createState() => _DosenPageState();
}

class _DosenPageState extends State<DosenPage> {
  String first_name;
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
        title: Text('Dosen'),
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

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
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
            "Hai ini merupakan halaman Dosen",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),

        Expanded(
            child: PageView(
          controller: _pageController,
          children: <Widget>[Dosen()],
        )),
        // Expanded(child: TaskPage()),
      ],
    );
  }
}
