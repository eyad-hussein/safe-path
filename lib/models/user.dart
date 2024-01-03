class User {
  String name;
  String email;
  String phone;
  String avatarUrl;
  int roleId;

  User({
    required this.name,
    required this.email,
    required this.phone,
    required this.avatarUrl,
    required this.roleId,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json['name'],
      email: json['email'],
      phone: json['phone'],
      avatarUrl: json['avatar_url'],
      roleId: json['role_id'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'phone': phone,
      'avatar_url': avatarUrl,
      'role_id': roleId,
    };
  }
}
