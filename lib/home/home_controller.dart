import 'package:devquiz/home/home_repository.dart';
import 'package:devquiz/home/home_state.dart';
import 'package:devquiz/shared/modules/quiz_module.dart';
import 'package:devquiz/shared/modules/user_module.dart';
import 'package:flutter/widgets.dart';

class HomeController {
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);

  set homeState(HomeState state) => stateNotifier.value = state;
  HomeState get homeState => stateNotifier.value;

  UserModule? user;
  List<QuizModule>? quizzes;

  final repository = HomeRepository();

  void getUser() async {
    homeState = HomeState.loading;
    //await Future.delayed(Duration(seconds: 1));
    user = await repository.getUser();

    homeState = HomeState.success;
  }

  void getQuizzes() async {
    homeState = HomeState.loading;
    //await Future.delayed(Duration(seconds: 2));

    quizzes = await repository.getQuizzes();

    homeState = HomeState.success;
  }
}
