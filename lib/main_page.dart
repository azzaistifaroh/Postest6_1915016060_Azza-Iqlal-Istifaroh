import 'package:flutter/material.dart';
import 'package:postest6_azzaiqlalistifaroh_1915016060_/custom_alert.dart';
import 'package:postest6_azzaiqlalistifaroh_1915016060_/landing_page.dart';
import 'package:get/get.dart';
import 'package:postest6_azzaiqlalistifaroh_1915016060_/counter_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shopee Food',
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

enum Pesanan {
  mcd,
  kfc,
  starbucks,
  croffle,
  fore,
  janji,
  pizza,
  traffic,
  sushi,
  rotio,
  chatime,
  richeese,
}

class _HomeState extends State<Home> {
  int angka = 0;
  String nama = '', alamat = '', nohp = '', menu = '';
  bool isMetodepembayaran = false;
  Pesanan pesanan = Pesanan.mcd;

  @override
  void dispose() {
    super.dispose();
  }

  String getPesanan(Pesanan value) {
    if (value == Pesanan.kfc) {
      return 'KFC';
    } else if (value == Pesanan.mcd) {
      return 'McDonalds';
    } else if (value == Pesanan.starbucks) {
      return 'Starbucks';
    } else if (value == Pesanan.croffle) {
      return "Croffle";
    } else if (value == Pesanan.fore) {
      return "Fore";
    } else if (value == Pesanan.janji) {
      return "janji";
    } else if (value == Pesanan.pizza) {
      return "Pizza";
    } else if (value == Pesanan.traffic) {
      return "Traffic";
    } else if (value == Pesanan.sushi) {
      return "Sushi";
    } else if (value == Pesanan.rotio) {
      return "Rotio";
    } else if (value == Pesanan.chatime) {
      return "Chatime";
    } else if (value == Pesanan.richeese) {
      return "Chatime";
    }
    return '';
  }

  @override
  Widget build(BuildContext context) {
    final TextController tc = Get.put(TextController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form Page - Shopee Food"),
        backgroundColor: Color.fromARGB(205, 244, 74, 2),
      ),
      body: ListView(children: [
        TextField(
          controller: tc.namaCtrl,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Isi Nama Anda",
            labelText: "Nama",
          ),
        ),
        const SizedBox(height: 20),
        TextField(
          controller: tc.alamatCtrl,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Isi Alamat Lengkap Anda",
            labelText: "Alamat Pengiriman",
          ),
        ),
        const SizedBox(height: 20),
        TextField(
          controller: tc.noHpCtrl,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Isi Nomor Telepon",
            labelText: "Nomor Telepon",
          ),
        ),
        const Padding(padding: EdgeInsets.all(10)),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: const Text('Pilih Menu Anda : '),
        ),
        ListTile(
          title: const Text("McDonald's"),
          leading: Radio(
              groupValue: pesanan,
              value: Pesanan.mcd,
              onChanged: (Pesanan? value) {
                setState(() {
                  pesanan = value!;
                });
              }),
        ),
        ListTile(
          title: const Text("KFC"),
          leading: Radio(
              groupValue: pesanan,
              value: Pesanan.kfc,
              onChanged: (Pesanan? value) {
                setState(() {
                  pesanan = value!;
                });
              }),
        ),
        ListTile(
          title: const Text("Starbucks"),
          leading: Radio(
              groupValue: pesanan,
              value: Pesanan.starbucks,
              onChanged: (Pesanan? value) {
                setState(() {
                  pesanan = value!;
                });
              }),
        ),
        ListTile(
          title: const Text("Dear Butter"),
          leading: Radio(
              groupValue: pesanan,
              value: Pesanan.croffle,
              onChanged: (Pesanan? value) {
                setState(() {
                  pesanan = value!;
                });
              }),
        ),
        ListTile(
          title: const Text("Fore Coffe"),
          leading: Radio(
              groupValue: pesanan,
              value: Pesanan.fore,
              onChanged: (Pesanan? value) {
                setState(() {
                  pesanan = value!;
                });
              }),
        ),
        ListTile(
          title: const Text("Janji Jiwa"),
          leading: Radio(
              groupValue: pesanan,
              value: Pesanan.janji,
              onChanged: (Pesanan? value) {
                setState(() {
                  pesanan = value!;
                });
              }),
        ),
        ListTile(
          title: const Text("Pizza Hut"),
          leading: Radio(
              groupValue: pesanan,
              value: Pesanan.pizza,
              onChanged: (Pesanan? value) {
                setState(() {
                  pesanan = value!;
                });
              }),
        ),
        ListTile(
          title: const Text("Traffic Bun"),
          leading: Radio(
              groupValue: pesanan,
              value: Pesanan.traffic,
              onChanged: (Pesanan? value) {
                setState(() {
                  pesanan = value!;
                });
              }),
        ),
        ListTile(
          title: const Text("Ichiban Sushi"),
          leading: Radio(
              groupValue: pesanan,
              value: Pesanan.sushi,
              onChanged: (Pesanan? value) {
                setState(() {
                  pesanan = value!;
                });
              }),
        ),
        ListTile(
          title: const Text("Roti O"),
          leading: Radio(
              groupValue: pesanan,
              value: Pesanan.rotio,
              onChanged: (Pesanan? value) {
                setState(() {
                  pesanan = value!;
                });
              }),
        ),
        ListTile(
          title: const Text("Chatime"),
          leading: Radio(
              groupValue: pesanan,
              value: Pesanan.chatime,
              onChanged: (Pesanan? value) {
                setState(() {
                  pesanan = value!;
                });
              }),
        ),
        ListTile(
          title: const Text("Richeese Factory"),
          leading: Radio(
              groupValue: pesanan,
              value: Pesanan.richeese,
              onChanged: (Pesanan? value) {
                setState(() {
                  pesanan = value!;
                });
              }),
        ),
        const SizedBox(height: 20),
        TextField(
          controller: tc.menuCtrl,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Isi Menu Pesanan",
            labelText: "Nama Menu Pesanan",
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: const Text('Jumlah Pesanan : '),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              angka++;
            });
          },
          child: const Text("Tambah"),
          style: ElevatedButton.styleFrom(
            primary: Color.fromARGB(205, 244, 74, 2),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                angka--;
              });
            },
            child: const Text("Kurang"),
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(205, 244, 74, 2),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: const Text('Pembayaran melalui ShopeePay/COD : '),
        ),
        ListTile(
          title: const Text("ShopeePay"),
          leading: Checkbox(
              value: isMetodepembayaran,
              onChanged: (bool? value) {
                setState(() {
                  isMetodepembayaran = value!;
                });
              }),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: tc.onPressed,
            child: const Text("Cek Detail Pesanan Anda"),
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(205, 244, 74, 2),
            ),
          ),
        ),
        Text("Nama                              :$nama"),
        Text("Alamat                            :$alamat"),
        Text("Nomor Telepon             : $nohp"),
        Text("Saya Mau Pesan           : ${getPesanan(pesanan)}"),
        Text("Nama Menu                   : $menu"),
        Text("Jumlah Pesanan           : $angka"),
        Text(isMetodepembayaran ? "Shopeepay" : "COD (Bayar di Tempat) "),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                CustomAlert(context);
              });
            },
            child: const Text("Pesan Sekarang"),
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(205, 244, 74, 2),
            ),
          ),
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.to(Hal4()), // Get.to() mirip Navigator.push()
        child: Text("Next"),
      ),
    );
  }
}

class Hal4 extends StatelessWidget {
  Hal4({Key? key}) : super(key: key);

  final TextController tc = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Order - Shopee food"),
        backgroundColor: Color.fromARGB(205, 244, 74, 2),
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Hallo, nama saya ${tc.nama}",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Text(
                "Alamat saya ${tc.alamat}",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Text(
                "NoHp: ${tc.noHp}",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Text(
                "Nama menu pesanan ${tc.menu}",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
