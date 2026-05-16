Function counter() {
  int angka = 0;

  return () {
    angka++;
    print(angka);
  };
}

void main() {
  var hitung = counter();

  hitung();
  hitung();
  hitung();
}