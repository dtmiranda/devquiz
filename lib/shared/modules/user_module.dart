import 'dart:convert';

class UserModule {
  final String userName;
  final String photoUrl;
  final int score;

  UserModule({
    required this.userName,
    required this.photoUrl,
    this.score = 0,
  });

  Map<String, dynamic> toMap() {
    return {
      'userName': userName,
      'photoUrl': photoUrl,
      'score': score,
    };
  }

  factory UserModule.fromMap(Map<String, dynamic> map) {
    return UserModule(
      userName: map['userName'] ?? '',
      photoUrl: map['photoUrl'] ?? '',
      score: map['score']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModule.fromJson(String source) =>
      UserModule.fromMap(json.decode(source));
}
