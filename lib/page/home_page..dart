import 'package:bangundatarilhamrb23/page/lingkaran_page.dart';
import 'package:bangundatarilhamrb23/page/persegi_page.dart';
import 'package:bangundatarilhamrb23/page/segitiga_page.dart';
import 'package:bangundatarilhamrb23/page/trapesium_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Home Page",
          style: TextStyle(color: Color(0xFFFD0000))),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>PersegiPage()));
                  },
                  child: CustomMenu(tittle: "Persegi", imageAsset: "assets/persegi.png",))),
              Expanded(child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LingkaranPage()));
                  },
                  child: CustomMenu(tittle: "Lingkaran", imageAsset: "assets/lingkaran.png",))),
            ],
          ),
          Row(
            children: [
              Expanded(child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SegitigaPage()));
                  },
                  child: CustomMenu(tittle: "Segitiga", imageAsset: "assets/segitiga.jpg",))),
              Expanded(child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>TrapesiumPage()));
                  },
                  child: CustomMenu(tittle: "Trapesium", imageAsset: "assets/trapesium.png",))),
            ],
          ),
        ],
     ),
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key, required this.imageAsset, required this.tittle,
  });
  final String imageAsset;
  final String tittle;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 16, vertical: 8,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 16, vertical: 100
      ),
        decoration:  BoxDecoration(color: Colors.indigoAccent,borderRadius: BorderRadius.circular(10))
     ,child: Column(
       children: [
         Image.asset(imageAsset, height: 100,)
         ,Padding(
           padding: const EdgeInsets.all(8.0),
           child: Text(tittle),
         ),
       ],
     ));
  }
}

