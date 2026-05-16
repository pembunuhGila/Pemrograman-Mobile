(String, int) dataMahasiswa() {
  return ("Zaki", 20);
}

void main() {
  var data = dataMahasiswa();

  print(data.$1);
  print(data.$2);
}