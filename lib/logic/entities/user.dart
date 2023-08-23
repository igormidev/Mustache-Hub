// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserModel extends Equatable {
  final String? email;
  final String? name;
  final String? urlDisplayImage;

  const UserModel({
    required this.email,
    required this.name,
    required this.urlDisplayImage,
  });

  factory UserModel.fromFirebase(User fbUser) {
    return UserModel(
      email: fbUser.email,
      name: fbUser.displayName,
      urlDisplayImage: fbUser.photoURL,
    );
  }

  @override
  String toString() =>
      'UserModel(email: $email, name: $name, urlDisplayImage: $urlDisplayImage)';

  @override
  List<Object> get props => [
        if (email != null) email!,
        if (name != null) name!,
        if (urlDisplayImage != null) urlDisplayImage!,
      ];

  UserModel copyWith({
    String? email,
    String? name,
    String? urlDisplayImage,
  }) {
    return UserModel(
      email: email ?? this.email,
      name: name ?? this.name,
      urlDisplayImage: urlDisplayImage ?? this.urlDisplayImage,
    );
  }
}
