// ignore_for_file: unnecessary_import, prefer_const_constructors, avoid_print, prefer_const_literals_to_create_immutables, prefer_final_fields, implementation_imports

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/bottom_navigation_bar_item.dart';
import 'package:flutter_marketuygulamasi/sepetim.dart';
import 'package:flutter_marketuygulamasi/urunler.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "projem",
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  int _aktificerikno = 0;

  late List _icerikler;

  @override
  void initState() {
    super.initState();

    _icerikler = [urunler(), sepetim()];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Uçarak Gelsin",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
      ),
      body: _icerikler[_aktificerikno],
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0.0),
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                        "https://cdn.pixabay.com/photo/2020/10/09/13/12/man-5640540_960_720.jpg",
                      ),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(60),
                ),
              ),
              decoration: BoxDecoration(color: Colors.black),
              accountName: Text(
                "Oguzhan Zeybek",
                style: TextStyle(color: Colors.white),
              ),
              accountEmail: Text(
                "darkstroge@gmail.com",
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(title: Text("Siparişlerim"),onTap: () {},),
            ListTile(title: Text("ayarlar"),onTap: () {},),
            ListTile(title: Text("kuponalrım"),onTap: () {},),
            ListTile(title: Text("indirimmlerim"),onTap: () {},),
            ListTile(title: Text("cıkıs yap"),onTap: () {
              Navigator.pop(context);
            },),

          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _aktificerikno,
          selectedItemColor: Color.fromARGB(255, 1, 250, 129),
          selectedFontSize: 20,
          unselectedFontSize: 17,
          unselectedItemColor: Colors.black,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Ürünler",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: "Sepetim"),
          ],
          onTap: (int tiklananbutonpozisyonno) {
            setState(() {
              _aktificerikno = tiklananbutonpozisyonno;
            });
          }),
    );
  }
}
