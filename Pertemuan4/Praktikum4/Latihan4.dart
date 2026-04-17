void main() {
  var list = [1, 2, 3];

  var nim = [2, 4, 4, 1, 0, 7, 0, 6, 0, 1, 0, 7];

  var gabung = [0, ...list, ...nim];

  print(gabung);
  print(gabung.length);
}