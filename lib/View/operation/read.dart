void getUsers() {
  var box = Hive.box('users');

  print(box.values);
}