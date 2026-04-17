void main() {
  var gifts = {
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1,
    'nama': 'Rachmad Zaki Setyawan',
    'nim': '244107060107'
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
    99: 'Rachmad Zaki Setyawan',
    100: '244107060107'
  };

  var mhs1 = Map<String, String>();
  mhs1['nama'] = 'Rachmad Zaki Setyawan';
  mhs1['nim'] = '244107060107';

  var mhs2 = Map<int, String>();
  mhs2[1] = 'Fauzi ';
  mhs2[2] = '244107060101';

  print(gifts);
  print(nobleGases);
  print(mhs1);
  print(mhs2);
}