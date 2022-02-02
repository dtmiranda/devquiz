import 'package:devquiz/modules/question_module.dart';

class UserModule {
  final String userName;
  final String photoUrl;
  final int score;

  UserModule({
    required this.userName,
    required this.photoUrl,
    this.score = 0,
  });
}
