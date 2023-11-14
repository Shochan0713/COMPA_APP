import 'package:compa_app/Models/models.dart';
import 'package:compa_app/providers/questions_state_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final questionProvider = StateProvider<List<QuestionModel>>((ref) => []);

final questionStateNottifierProvider =
    StateNotifierProvider<QuestionStateNottifier, List<QuestionModel>>((ref) {
  return QuestionStateNottifier([]);
});
