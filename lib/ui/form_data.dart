import 'package:flutter/material.dart';
import 'tampil_data.dart';

class FormData extends StatefulWidget {
  const FormData({super.key});

  @override
  State<FormData> createState() => _FormDataState();
}

class _FormDataState extends State<FormData> {
  final TextEditingController nama = TextEditingController();
  final TextEditingController nim = TextEditingController();
  final TextEditingController tanggal = TextEditingController();

  Future<void> pilihTanggal() async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime(2002),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
      builder: (context, child) {
        return Theme(
          data: ThemeData.light().copyWith(
            colorScheme: const ColorScheme.light(
              primary: Color(0xFFFF8FB1),
            ),
          ),
          child: child!,
        );
      },
    );

    if (picked != null) {
      tanggal.text =
          "${picked.year}-${picked.month.toString().padLeft(2, '0')}-${picked.day.toString().padLeft(2, '0')}";
    }
  }

  InputDecoration _style(String label) {
    return InputDecoration(
      labelText: label,
      filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Input Data")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(controller: nama, decoration: _style("Nama")),
            const SizedBox(height: 12),
            TextField(controller: nim, decoration: _style("NIM")),
            const SizedBox(height: 12),
            TextField(
              controller: tanggal,
              readOnly: true,
              decoration: _style("Tanggal Lahir (YYYY-MM-DD)"),
              onTap: pilihTanggal,
            ),
            const SizedBox(height: 25),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 14),
                backgroundColor: const Color(0xFFFFA6C9),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => TampilData(
                    nama: nama.text,
                    nim: nim.text,
                    tanggalLahir: tanggal.text,
                  ),
                ));
              },
              child: const Text("Kirim", style: TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }
}
