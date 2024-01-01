abstract class User {
  String name;
  String email;
  int phone;
  String avatarUrl;
  int roleId;

  User(
    this.name,
    this.email,
    this.phone,
    this.avatarUrl,
    this.roleId,
  );
}
