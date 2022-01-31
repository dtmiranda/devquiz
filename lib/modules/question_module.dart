import 'package:devquiz/modules/answer_module.dart';

class QuestionModule {
  final String questionTitle;
  final List<AnswerModule> answers;

  QuestionModule({required this.questionTitle, required this.answers})
      : assert(answers.length == 4);
}
