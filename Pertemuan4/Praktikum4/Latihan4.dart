void main() {
  var list = [1, 2, 3];

  var nim = [2, 4, 4, 1, 0, 7, 0, 6, 0, 1, 0, 7];

  var gabung = [0, ...list, ...nim];

  bool promoActive = false;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];

  var login = 'Manager';
  var nav2 = ['Home', 'Furniture', 'Plants', if (login == 'User') 'Inventory'];

  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');

  print(gabung);
  print(gabung.length);
  print(nav);
  print(nav2);
  print(listOfStrings);
}