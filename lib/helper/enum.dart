enum QuestionContent {
  private,
  work,
  students_themselves,
  love_questions,
  tricky_question
}

Map<QuestionContent, String> questionContent = {
  QuestionContent.private: "私生活の質問",
  QuestionContent.work: "仕事の質問",
  QuestionContent.students_themselves: "学生自体の質問",
  QuestionContent.love_questions: "恋の質問",
  QuestionContent.tricky_question: "Hな質問",
};
