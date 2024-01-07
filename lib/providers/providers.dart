import 'package:compa_app/Models/models.dart';
import 'package:compa_app/helper/enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class QuestionStateNotifier extends StateNotifier<List<QuestionModel>> {
  QuestionStateNotifier() : super([]);
  void updateQuestions(List<QuestionModel> newQuestions) {
    state = newQuestions;
  }
}

final questionStateNotifierProvider =
    StateNotifierProvider<QuestionStateNotifier, List<QuestionModel>>((ref) {
  return QuestionStateNotifier();
});

final selectedValuesProvider =
    ChangeNotifierProvider<SelectedValues>((ref) => SelectedValues());

class SelectedValues extends ChangeNotifier {
  QuestionContent _selectedQuestionContent = QuestionContent.private;

  QuestionContent get selectedQuestionContent => _selectedQuestionContent;

  void updateQuestionContent(QuestionContent value) {
    _selectedQuestionContent = value;
    notifyListeners();
  }
}
