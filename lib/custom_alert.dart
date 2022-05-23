import 'package:flutter/material.dart';
import 'package:postest6_azzaiqlalistifaroh_1915016060_/custom_alert.dart';
import 'package:postest6_azzaiqlalistifaroh_1915016060_/main_page.dart';
import 'package:get/get.dart';

Future<dynamic> CustomAlert(
  BuildContext context,
) {
  return showDialog(
    barrierDismissible: false,
    context: context,
    builder: (context) {
      return AlertDialog(
        title: const Text("Terima Kasih atas pesanan Anda mohon tunggu"),
        backgroundColor: Colors.white,
        actions: [
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Image.asset(
                  "assets/logo2.jpg",
                  height: 200,
                  width: 200,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: double.infinity,
                    height: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      "Selesai",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    },
  );
}
