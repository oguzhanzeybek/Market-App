import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_marketuygulamasi/kategori.dart';

class urunler extends StatefulWidget {
  const urunler({super.key});

  @override
  State<urunler> createState() => _urunlerState();
}

class _urunlerState extends State<urunler> with SingleTickerProviderStateMixin {
  late TabController televizyonkontrolcusu;
  @override
  void initState() {
    televizyonkontrolcusu = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
            indicatorColor: Colors.black,
            labelColor: Color.fromARGB(255, 0, 255, 132),
            unselectedLabelColor: Colors.black,
            controller: televizyonkontrolcusu,
            labelStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            isScrollable: true,
            tabs: [
              Tab(
                child: Text(
                  "Temel Gıda",
                ),
              ),
              Tab(
                child: Text(
                  "şekerleme",
                ),
              ),
              Tab(
                child: Text(
                  "içeçekler",
                ),
              ),
              Tab(
                child: Text(
                  "temizlik",
                ),
              ),
            ]),
        Expanded(
          child: TabBarView(
            controller: televizyonkontrolcusu,
            children: [
              Kategori(
                kategori: 'Temel Gıda',
              ),
              Kategori(
                kategori: 'şekerleme',
              ),
              Kategori(
                kategori: 'içeçekler',
              ),
              Kategori(
                kategori: 'temizlik',
              ),
            ],
          ),
        )
      ],
    );
  }
}
