// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserModel extends Equatable {
  final String id;
  final String email;
  final String name;
  final String? urlDisplayImage;

  const UserModel({
    required this.id,
    required this.email,
    required this.name,
    required this.urlDisplayImage,
  });

  factory UserModel.fromFirebase(User fbUser) {
    return UserModel(
      id: fbUser.uid,
      email: fbUser.email as String,
      name: fbUser.displayName as String,
      urlDisplayImage: fbUser.photoURL,
    );
  }

  @override
  String toString() =>
      'UserModel(email: $email, id: $id, name: $name, urlDisplayImage: $urlDisplayImage)';

  @override
  List<Object> get props => [
        email,
        id,
        name,
        if (urlDisplayImage != null) urlDisplayImage!,
      ];

  UserModel copyWith({
    String? email,
    String? id,
    String? name,
    String? urlDisplayImage,
  }) {
    return UserModel(
      id: id ?? this.id,
      email: email ?? this.email,
      name: name ?? this.name,
      urlDisplayImage: urlDisplayImage ?? this.urlDisplayImage,
    );
  }
}
