import 'package:devquiz/core/core.dart';
import 'package:devquiz/home/home_state.dart';
import 'package:devquiz/modules/answer_module.dart';
import 'package:devquiz/modules/question_module.dart';
import 'package:devquiz/modules/quiz_module.dart';
import 'package:devquiz/modules/user_module.dart';

class HomeController {
  HomeState homeState = HomeState.empty;

  UserModule? userModule;
  List<QuizModule>? quizzes;

  void getUser() {
    userModule = UserModule(userName: "Samuel", photoUrl: "");
  }

  void getQuizzes() {
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
            ])
          ])
    ];
  }
}
