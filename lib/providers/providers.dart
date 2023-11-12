import 'package:compa_app/Models/models.dart';
import 'package:compa_app/helper/enum.dart';
import 'package:riverpod/riverpod.dart';

final questionContentProvider = StateProvider<QuestionContentModel?>((ref) {
  return QuestionContentModel(QuestionContent.private as String);
});

// final answererNameProvider = StateProvider((ref) {
//   return 
// });
