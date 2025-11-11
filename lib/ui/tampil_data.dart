import 'package:flutter/material.dart';

class TampilData extends StatelessWidget {
  final String nama;
  final String nim;
  final String tanggalLahir;

  const TampilData({
    required this.nama,
    required this.nim,
    required this.tanggalLahir,
    super.key,
  });

  int hitungUmur(String tgl) {
    try {
      DateTime lahir = DateTime.parse(tgl);
      DateTime now = DateTime.now();
      int umur = now.year - lahir.year;
      if (now.month < lahir.month ||
          (now.month == lahir.month && now.day < lahir.day)) {
        umur--;
      }
      return umur;
    } catch (_) {
      return 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    int umur = hitungUmur(tanggalLahir);

    return Scaffold(
      appBar: AppBar(title: const Text("Perkenalan")),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: const Color(0xFFFFC7D9),
            borderRadius: BorderRadius.circular(18),
          ),
          margin: const EdgeInsets.all(30),
          child: Text(
            "Halo, nama saya $nama\n"
            "NIM: $nim\n"
            "Umur saya: $umur tahun",
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
