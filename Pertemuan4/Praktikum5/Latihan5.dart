(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}

void main() {
  var gabung = (10, 20);

  print("Sebelum tukar: $gabung");

  var hasilTukar = tukar(gabung);

  print("Setelah tukar: $hasilTukar");

  // Record type annotation in a variable declaration:
  (String, int) mahasiswa = ("Rachmad Zaki Setyawan", 244107060107);

  print(mahasiswa);
  print(mahasiswa.$1);
  print(mahasiswa.$2);

  // Record 
  var mahasiswa2 = ("Rachmad Zaki Setyawan", a: 2, b: true, '244107060107');

  print(mahasiswa2.$1);
  print(mahasiswa2.a);
  print(mahasiswa2.b);
  print(mahasiswa2.$2);

}