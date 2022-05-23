import 'package:flutter/material.dart';
import 'package:postest6_azzaiqlalistifaroh_1915016060_/custom_alert.dart';
import 'package:postest6_azzaiqlalistifaroh_1915016060_/main_page.dart';
import 'package:get/get.dart';

class TextController extends GetxController {
  var nama = "".obs;
  var alamat = "".obs;
  var noHp = "".obs;
  var menu = "".obs;

  final namaCtrl = TextEditingController();
  final alamatCtrl = TextEditingController();
  final noHpCtrl = TextEditingController();
  final menuCtrl = TextEditingController();

  onPressed() {
    nama = namaCtrl.text.obs;
    alamat = alamatCtrl.text.obs;
    noHp = noHpCtrl.text.obs;
    menu = noHpCtrl.text.obs;
  }

  @override
  void onClose() {
    namaCtrl.dispose();
    alamatCtrl.dispose();
    noHpCtrl.dispose();
    menuCtrl.dispose();
    super.onClose();
  }
}
