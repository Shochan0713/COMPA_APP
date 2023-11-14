import 'package:compa_app/Models/models.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class QuestionStateNottifier extends StateNotifier<List<QuestionModel>> {
  QuestionStateNottifier(List<QuestionModel> state) : super(state);

  void addQuestion(QuestionModel question) {
    state = [...state, question];
  }

  void resetQuestions() {
    state = [];
  }

  void updateQuestions(List<QuestionModel> updateQuestions) {
    state = updateQuestions;
  }
}
