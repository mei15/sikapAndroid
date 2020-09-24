import 'package:SikapApp/view/dosen/dosen_page.dart';
import 'package:SikapApp/view/home/home.dart';
import 'package:SikapApp/view/judul/judul_page.dart';
import 'package:SikapApp/view/mahasiswa/mahasiswa_page.dart';
import 'package:SikapApp/view/profil/profil_page.dart';
import 'package:flutter/material.dart';

class Drawers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textstyle = TextStyle(
        color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold);

    final style = TextStyle(
        color: Colors.white, fontSize: 15.0, fontWeight: FontWeight.bold);

    final listStyle = TextStyle(
        color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.normal);

    return Drawer(
      child: Container(
        // color: Color.fromRGBO(58, 66, 86, 1.0),
        color: Colors.blueGrey,
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.blueGrey,
              ),
            ),
            ListTile(
                leading: Icon(
                  Icons.verified_user,
                  color: Colors.black,
                ),
                title: Text(
                  'Profil',
                  style: listStyle,
                ),
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfilPage()))),
            Divider(color: Colors.black, height: 1.0),
            SizedBox(
              height: 20.0,
            ),
            ListTile(
                leading: Icon(
                  Icons.supervised_user_circle,
                  color: Colors.black,
                ),
                title: Text(
                  'Dosen',
                  style: listStyle,
                ),
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DosenPage()))),
            ListTile(
                leading: Icon(
                  Icons.supervised_user_circle,
                  color: Colors.black,
                ),
                title: Text(
                  'Mahasiswa',
                  style: listStyle,
                ),
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MahasiswaPage()))),
            ListTile(
                leading: Icon(
                  Icons.bookmark_border,
                  color: Colors.black,
                ),
                title: Text(
                  'Judul',
                  style: listStyle,
                ),
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => JudulPage()))),
            ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
                title: Text(
                  'Home',
                  style: listStyle,
                ),
                onTap: () => Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home()))),
          ],
        ),
      ),
    );
  }
}
