import 'package:get/get.dart';

class PersegiController extends GetxController{
  int sisi = 0;
  final hasil ="".obs;

  void hitungLuas(){
    int hitung = sisi * sisi;
    hasil.value = "Hasil Perhitungan luas dari sisi $sisi x $sisi adalah $hitung ";
  }

  void hitungKeliling(){
    int hitung = sisi * 4;
    hasil.value = "Hasil Perhitungan keliling dari sisi $sisi x 4 adalah $hitung ";
  }
}