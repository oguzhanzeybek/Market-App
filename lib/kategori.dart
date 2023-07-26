import 'package:flutter/cupertino.dart';
import 'package:flutter_marketuygulamasi/kategori.dart';
import 'package:flutter/material.dart';
import 'package:flutter_marketuygulamasi/urun_detay.dart';
import 'kategori.dart';

class Kategori extends StatefulWidget {
  final String kategori;

  const Kategori({super.key, required this.kategori});

  @override
  _kategoriState createState() => _kategoriState();
}

class _kategoriState extends State<Kategori> {
  late List<Widget> gosterilecekliste;
  @override
  void initState() {
    super.initState();
    if (widget.kategori == "Temel Gıda") {
      gosterilecekliste = [
        urunkarti("1", "20 TL",
            "https://cdn.pixabay.com/photo/2019/05/29/19/04/tomatoes-4238247_960_720.jpg",
            mevcut: true),
        urunkarti("2", "13 TL",
            "https://cdn.pixabay.com/photo/2017/01/18/15/23/milk-can-1990072_960_720.jpg",
            mevcut: true),
        urunkarti("3", "33 TL",
            "https://cdn.pixabay.com/photo/2017/01/18/15/23/milk-can-1990072_960_720.jpg"),
        urunkarti("4", "93 TL",
            "https://cdn.pixabay.com/photo/2017/01/18/15/23/milk-can-1990072_960_720.jpg",
            mevcut: true),
        urunkarti("5", "50 TL",
            "https://cdn.pixabay.com/photo/2017/01/18/15/23/milk-can-1990072_960_720.jpg",
            mevcut: true),
      ];
    } else if (widget.kategori == "şekerleme") {
      gosterilecekliste = [
        urunkarti("6", "20 TL",
            "https://cdn.pixabay.com/photo/2019/05/29/19/04/tomatoes-4238247_960_720.jpg",
            mevcut: true),
        urunkarti("7t", "13 TL",
            "https://cdn.pixabay.com/photo/2017/01/18/15/23/milk-can-1990072_960_720.jpg"),
        urunkarti("Doaaaamates", "20 TL",
            "https://cdn.pixabay.com/photo/2019/05/29/19/04/tomatoes-4238247_960_720.jpg",
            mevcut: true),
        urunkarti("8", "13 TL",
            "https://cdn.pixabay.com/photo/2017/01/18/15/23/milk-can-1990072_960_720.jpg"),
        urunkarti("9", "20 TL",
            "https://cdn.pixabay.com/photo/2019/05/29/19/04/tomatoes-4238247_960_720.jpg",
            mevcut: true),
        urunkarti("10", "13 TL",
            "https://cdn.pixabay.com/photo/2017/01/18/15/23/milk-can-1990072_960_720.jpg",
            mevcut: true),
        urunkarti("11", "20 TL",
            "https://cdn.pixabay.com/photo/2019/05/29/19/04/tomatoes-4238247_960_720.jpg",
            mevcut: true),
        urunkarti("S1", "13 TL",
            "https://cdn.pixabay.com/photo/2017/01/18/15/23/milk-can-1990072_960_720.jpg"),
      ];
    } else if (widget.kategori == "içeçekler") {
      gosterilecekliste = [
        urunkarti("D", "20 TL",
            "https://cdn.pixabay.com/photo/2019/05/29/19/04/tomatoes-4238247_960_720.jpg"),
        urunkarti("14", "13 TL",
            "https://cdn.pixabay.com/photo/2017/01/18/15/23/milk-can-1990072_960_720.jpg",
            mevcut: true),
        urunkarti("D15", "20 TL",
            "https://cdn.pixabay.com/photo/2019/05/29/19/04/tomatoes-4238247_960_720.jpg",
            mevcut: true),
        urunkarti("t156", "13 TL",
            "https://cdn.pixabay.com/photo/2017/01/18/15/23/milk-can-1990072_960_720.jpg"),
      ];
    } else if (widget.kategori == "temizlik") {
      gosterilecekliste = [
        urunkarti("D56", "20 TL",
            "https://cdn.pixabay.com/photo/2019/05/29/19/04/tomatoes-4238247_960_720.jpg",
            mevcut: true),
        urunkarti("Süt67", "13 TL",
            "https://cdn.pixabay.com/photo/2017/01/18/15/23/milk-can-1990072_960_720.jpg",
            mevcut: true),
        urunkarti("D86o", "20 TL",
            "https://cdn.pixabay.com/photo/2019/05/29/19/04/tomatoes-4238247_960_720.jpg",
            mevcut: true),
        urunkarti("S56ü", "13 TL",
            "https://cdn.pixabay.com/photo/2017/01/18/15/23/milk-can-1990072_960_720.jpg"),
        urunkarti("ate56s", "20 TL",
            "https://cdn.pixabay.com/photo/2019/05/29/19/04/tomatoes-4238247_960_720.jpg"),
        urunkarti("St456", "13 TL",
            "https://cdn.pixabay.com/photo/2017/01/18/15/23/milk-can-1990072_960_720.jpg",
            mevcut: true),
      ];
    }
  }

  Widget urunkarti(String isim, String fiyat, String resimyolu,
      {bool mevcut = false}) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: ((context) => urundetay(
                      isim: isim,
                      fiyat: fiyat,
                      resimyolu: resimyolu,
                      mevcut: mevcut,
                    ))));
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                blurRadius: 4.0,
                spreadRadius: 2.0,
              ),
            ]),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Hero(
            tag: isim,
            child: Container(
              width: 120,
              height: 80,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                        resimyolu,
                      ),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(20)),
            ),
          ),
          SizedBox(
            height: 9.0,
          ),
          Text(
            isim,
            style: TextStyle(
                fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          SizedBox(
            height: 9.0,
          ),
          Text(
            fiyat,
            style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 12,
      crossAxisSpacing: 12,
      padding: EdgeInsets.all(20),
      childAspectRatio: 1,
      children: gosterilecekliste,
    );
  }
}
