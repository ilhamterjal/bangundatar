import 'package:bangundatarilhamrb23/controller/persegi_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiPage extends StatelessWidget {
  PersegiPage({super.key});

  final PersegiController _persegiController = Get.put(PersegiController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Persegi Page", style: TextStyle(color: Color(0xFFFD0000))),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/Persegi.png"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Persegi"),
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
                  "Persegi adalah bangun datar dua dimensi yang memiliki bentuk pada keempat rusuk yang sisinya sama panjang dan memiliki empat sudut siku-siku sebesar 90 derajat"),
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
                          _persegiController.sisi = int.parse(value);
                        },
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: "Sisi",
                          hintText: "Masukkan Sisi",
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
                              _persegiController.hitungLuas();
                            },
                            child: Text("Hitung Luas")),
                        ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.black),
                            ),
                            onPressed: () {
                              _persegiController.hitungKeliling();
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
                    Obx(() => Text(_persegiController.hasil.value)),
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
