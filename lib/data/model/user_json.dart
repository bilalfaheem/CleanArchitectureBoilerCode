import 'package:todo_bloc/domain/entities/user.dart';

class UserJson {
  int? id;
  String? username;
  String? email;
  String? firstName;
  String? lastName;
  String? gender;
  String? image;
  String? token;

  UserJson({
    this.id,
    this.username,
    this.email,
    this.firstName,
    this.lastName,
    this.gender,
    this.image,
    this.token,
  });

  factory UserJson.fromJson(Map<String, dynamic> json) => UserJson(
        id: json['id'] as int?,
        username: json['username'] as String?,
        email: json['email'] as String?,
        firstName: json['firstName'] as String?,
        lastName: json['lastName'] as String?,
        gender: json['gender'] as String?,
        image: json['image'] as String?,
        token: json['token'] as String?,
      );

  User toDomain() => User(
      id: id ?? 000,
      username: username ?? "",
      email: email ?? "",
      firstName: firstName ?? "",
      lastName: lastName ?? "",
      gender: gender ?? "",
      image: image ?? "",
      token: token ?? "");
}
