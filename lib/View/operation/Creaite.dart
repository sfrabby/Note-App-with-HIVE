void addUser() {
  var box = Hive.box('users');

  box.add({
    "name": "Ratul",
    "age": 22
  });
}