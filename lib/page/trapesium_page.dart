import 'package:bangundatarilhamrb23/controller/persegi_controller.dart';
import 'package:bangundatarilhamrb23/controller/segitiga_controller.dart';
import 'package:bangundatarilhamrb23/controller/trapesium_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TrapesiumPage extends StatelessWidget {
  TrapesiumPage({super.key});
  final TrapesiumController _trapesiumController = Get.put(TrapesiumController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Trapesium Page", style: TextStyle(color: Color(0xFFFD0000))),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/trapesium.png"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Trapesium"),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              decoration: BoxDecoration(
                  color: Colors.indigoAccent,
                  borderRadius: BorderRadius.circular(10)),
              child: Text(
                  "Trapesium adalah segi empat yang memiliki sepasang sisi saling berhadapan dan sejajar. Trapesium merupakan perpaduan segitiga dan persegi. Dalam trapesium, sisi yang sejajar disebut alas, sedangkan sisi lain yang tidak sejajar dinamakan kaki atau sisi lateral"),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              decoration: BoxDecoration(
                  color: Colors.indigoAccent,
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: SizedBox(
                      width: 250,
                      child: TextFormField(
                        onChanged: (String value) {
                          _trapesiumController.a = int.parse(value);
                        },
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: "Sisi a",
                          hintText: "Masukkan Sisi a",
                          hintStyle: TextStyle(color: Colors.grey.shade400),
                          contentPadding:
                          EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(width: 1, color: Colors.grey),
                              borderRadius: BorderRadius.all(Radius.circular(10))),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1, color: Colors.grey),
                              borderRadius: BorderRadius.all(Radius.circular(10))),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.blue),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: SizedBox(
                      width: 250,
                      child: TextFormField(
                        onChanged: (String value) {
                          _trapesiumController.b = int.parse(value);
                        },
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: "Sisi b",
                          hintText: "Masukkan Sisi b",
                          hintStyle: TextStyle(color: Colors.grey.shade400),
                          contentPadding:
                          EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(width: 1, color: Colors.grey),
                              borderRadius: BorderRadius.all(Radius.circular(10))),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1, color: Colors.grey),
                              borderRadius: BorderRadius.all(Radius.circular(10))),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.blue),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: SizedBox(
                      width: 250,
                      child: TextFormField(
                        onChanged: (String value) {
                          _trapesiumController.tinggi = int.parse(value);
                        },
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: "Tinggi",
                          hintText: "Masukkan Tinggi",
                          hintStyle: TextStyle(color: Colors.grey.shade400),
                          contentPadding:
                          EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(width: 1, color: Colors.grey),
                              borderRadius: BorderRadius.all(Radius.circular(10))),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1, color: Colors.grey),
                              borderRadius: BorderRadius.all(Radius.circular(10))),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.blue),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.pinkAccent),
                            ),
                            onPressed: () {
                              _trapesiumController.hitungLuas();
                            },
                            child: Text("Hitung Luas")),
                        ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.black),
                            ),
                            onPressed: () {
                              _trapesiumController.hitungKeliling();
                            },
                            child: Text("Hitung Keliling")),
                      ],
                    ),
                  ),

                ],
              ),
            ),
            Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                decoration: BoxDecoration(
                    color: Colors.indigoAccent,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Hasil", style: TextStyle(fontSize: 30),)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Obx(() => Text(_trapesiumController.hasil.value)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("8===============D", style: TextStyle(fontSize: 30), )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Terima Kasih Sayang Muach!")
                      ],
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
