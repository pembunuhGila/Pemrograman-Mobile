// Menggunakan Foreach untuk mengakses elemen dalam list
void main() {
  var daftar = ['A', 'B', 'C'];

  daftar.forEach((item) {
    print("Huruf: $item");
  });

// Menggunakan Return Value
  var angka = [1, 2, 3];

  var hasil = angka.map((n) {
    return n * 2;
  }).toList();

  print(hasil);
}