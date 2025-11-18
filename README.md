Simon Dimas Pramudya <br>
H1D023104 <br>
Shift Asal G <br>
Shift Akhir D <br>


# H1D023104_Tugas 6

Setelah menuliskan input di bagian ini di halaman Form

final TextEditingController nama = TextEditingController(); <br>
final TextEditingController nim = TextEditingController(); <br>
final TextEditingController tanggal = TextEditingController(); <br>

User mengirim data dengan

Navigator.push(context, MaterialPageRoute( <br>
  builder: (context) => TampilData( <br>
    nama: nama.text, <br>
    nim: nim.text, <br>
    tanggalLahir: tanggal.text, <br>
  ), <br>
)); <br>

Di halaman tampilan data akan berisikan

final String nama; <br>
final String nim; <br>
final String tanggalLahir; <br>

untuk menerima data dari input halaman sebelumnya
Menghitung umur dengan ini

int hitungUmur(String tgl) { <br>
  DateTime lahir = DateTime.parse(tgl); <br>
  DateTime now = DateTime.now(); <br>
  int umur = now.year - lahir.year; <br>
  if (now.month < lahir.month || (now.month == lahir.month && now.day < lahir.day)) { <br>
    umur--; <br>
  } <br>
  return umur; <br>
} <br>

Yang hasil perhitungan disimpan di int umur = hitungUmur(tanggalLahir); <br>
Dan ditampilkan melalui
Text( <br>
  "Halo, nama saya $nama\n" <br>
  "NIM: $nim\n" <br>
  "Umur saya: $umur tahun", <br>
) 

