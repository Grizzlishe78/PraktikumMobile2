Simon Dimas Pramudya
H1D023104
Shift Asal G
Shift Akhir D


# H1D023104_Tugas 6

Setelah menuliskan input di bagian ini di halaman Form

final TextEditingController nama = TextEditingController();
final TextEditingController nim = TextEditingController();
final TextEditingController tanggal = TextEditingController();

User mengirim data dengan

Navigator.push(context, MaterialPageRoute(
  builder: (context) => TampilData(
    nama: nama.text,
    nim: nim.text,
    tanggalLahir: tanggal.text,
  ),
));

Di halaman tampilan data akan berisikan

final String nama;
final String nim;
final String tanggalLahir;

untuk menerima data dari input halaman sebelumnya
Menghitung umur dengan ini

int hitungUmur(String tgl) {
  DateTime lahir = DateTime.parse(tgl);
  DateTime now = DateTime.now();
  int umur = now.year - lahir.year;
  if (now.month < lahir.month || (now.month == lahir.month && now.day < lahir.day)) {
    umur--;
  }
  return umur;
}

Yang hasil perhitungan disimpan di int umur = hitungUmur(tanggalLahir);
Dan ditampilkan melalui
Text(
  "Halo, nama saya $nama\n"
  "NIM: $nim\n"
  "Umur saya: $umur tahun",
)

