class User {
  final String userName;
  final String password;
  final String email;

  User({
    required this.userName,
    required this.password,
    required this.email,
  });
}

List<User> loginUsers = [
  User(
    userName: 'Mohamed Salah',
    password: "123456",
    email: "mohamed20007915@gmail.com",
  ),
];
