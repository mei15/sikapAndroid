import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:SikapApp/network_utils/api.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Dosen extends StatefulWidget {
  @override
  _DosenState createState() => _DosenState();
}

class _DosenState extends State<Dosen> {
  String judul;
  String keterangan;

  @override
  void initState() {
    _loadKonsultasiData();
    super.initState();
  }

  _loadKonsultasiData() async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    var konsultasi = jsonDecode(localStorage.getString('konsultasi'));

    if (konsultasi != null) {
      setState(() {
        judul = konsultasi['judul'];
        keterangan = konsultasi['keterangan'];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Judul Kerja Praktik anda $judul',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Keterangan Revisi Anda $keterangan',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
