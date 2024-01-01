import 'package:safe_path/models/user.dart';
import 'package:safe_path/models/parent.dart';

class Child extends User {
  Parent parent;

  Child(String name, String email, int phone, String avatarUrl, this.parent)
      : super(name, email, phone, avatarUrl);

  factory Child.fromJson(Map<String, dynamic> json) {
    return Child(
      json['name'],
      json['email'],
      json['phone'],
      json['avatarUrl'],
      json['parent'],
    );
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        'email': email,
        'phone': phone,
        'avatarUrl': avatarUrl,
        'parent': parent,
      };
}
