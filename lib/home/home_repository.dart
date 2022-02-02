import 'dart:convert';

import 'package:devquiz/modules/quiz_module.dart';
import 'package:devquiz/modules/user_module.dart';
import 'package:flutter/services.dart';

class HomeRepository {
  Future<UserModule> getUser() async {
    final response = await rootBundle.loadString("/database/user.json");
    final user = UserModule.fromJson(response);
    return user;
  }

  Future<List<QuizModule>> getQuizzes() async {
    final response = await rootBundle.loadString("/database/quizzes.json");
    final list = jsonDecode(response) as List;
    final quizzes = list.map((e) => QuizModule.fromMap(e)).toList();
    return quizzes;
  }
}
