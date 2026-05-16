// Default parameters
void sapa(String nama, [String pesan = "Halo"]) {
  print("$pesan, $nama");
}

// Positional Parameters
void tambah(int a, int b) {
  print(a + b);
}

// Optional Positional Parameters
void tampil(String nama, [int umur = 18]) {
  print("$nama, $umur tahun");
}

// Named Parameters
void biodata({String? nama, int? umur}) {
  print("Nama: $nama");
  print("Umur: $umur");
}