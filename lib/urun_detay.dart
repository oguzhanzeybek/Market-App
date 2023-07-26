import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class urundetay extends StatelessWidget {
  const urundetay(
      {super.key,
      required this.isim,
      required this.fiyat,
      required this.resimyolu,
      required this.mevcut});

  final String isim;
  final String fiyat;
  final String resimyolu;
  final bool mevcut;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Stack(
          children: [
            Hero(tag: isim, child: Image.network(resimyolu)),
            IconButton(
                onPressed: (() {
                  Navigator.pop(context);
                }),
                icon: Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.white,
                  size: 40,
                )),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Center(
          child: Text(
            isim,
            style: TextStyle(
              fontSize: 24,
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.normal,
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Center(
          child: Text(
            fiyat,
            style: TextStyle(
              fontSize: 24,
              color: Colors.redAccent,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.normal,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 15, left: 15),
          child: Text(
            ">>bu bolude urunle alakalı bilgiler yer almaktadır._____________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 17,
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(45),
          child: Container(
            width: MediaQuery.of(context).size.width - 80.0,
            height: 70.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(80),
              border: Border.all(
                color: Colors.black,
              ),
              color: mevcut ? Color.fromARGB(255, 0, 255, 8) : Colors.red,
            ),
            child: Center(
              child: Text(
                mevcut ? "Sepete Ekle" : "Stokta Yok",
                style: TextStyle(
                  fontSize: 26,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
