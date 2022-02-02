import 'package:devquiz/core/core.dart';
import 'package:devquiz/home/home_state.dart';
import 'package:devquiz/modules/answer_module.dart';
import 'package:devquiz/modules/question_module.dart';
import 'package:devquiz/modules/quiz_module.dart';
import 'package:devquiz/modules/user_module.dart';
import 'package:flutter/widgets.dart';

class HomeController {
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);
  set homeState(HomeState state) => stateNotifier.value = state;
  HomeState get homeState => stateNotifier.value;

  UserModule? user;
  List<QuizModule>? quizzes;

  void getUser() async {
    homeState = HomeState.loading;
    await Future.delayed(Duration(seconds: 1));
    user = UserModule(
      userName: "Samuel",
      photoUrl: "https://github.com/dtmiranda.png",
    );
    homeState = HomeState.success;
  }

  void getQuizzes() async {
    homeState = HomeState.loading;
    await Future.delayed(Duration(seconds: 1));
    homeState = HomeState.loading;
    quizzes = [
      QuizModule(
        quizTitle: "NLW 5 Flutteer",
        image: AppImages.blocks,
        level: Level.easy,
        questions: [
          QuestionModule(questionTitle: "Esta curtindo o Futter?", answers: [
            AnswerModule(answerTitle: "Estou curtindo"),
            AnswerModule(answerTitle: "Amando Flutter"),
            AnswerModule(answerTitle: "Muito top"),
            AnswerModule(answerTitle: "Show de Bola", isRight: true),
          ]),
          QuestionModule(questionTitle: "Esta curtindo o Futter?", answers: [
            AnswerModule(answerTitle: "Estou curtindo"),
            AnswerModule(answerTitle: "Amando Flutter"),
            AnswerModule(answerTitle: "Muito top"),
            AnswerModule(answerTitle: "Show de Bola", isRight: true),
          ]),
        ],
      ),
      QuizModule(
        quizTitle: "NLW 5 Flutteer",
        image: AppImages.blocks,
        level: Level.easy,
        questions: [
          QuestionModule(questionTitle: "Esta curtindo o Futter?", answers: [
            AnswerModule(answerTitle: "Estou curtindo"),
            AnswerModule(answerTitle: "Amando Flutter"),
            AnswerModule(answerTitle: "Muito top"),
            AnswerModule(answerTitle: "Show de Bola", isRight: true),
          ]),
        ],
      ),
    ];

    homeState = HomeState.success;
  }
}
