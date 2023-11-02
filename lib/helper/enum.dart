//質問内容

enum QuestionContent {
  private,
  work,
  students_themselves,
  love_questions,
  tricky_question
}

//ランダムか順番
enum OutputOrder { random, norandom }

//質問数
enum QuestionNumber {
  TYPE1,
  TYPE2,
  TYPE3,
  TYPE4,
}

// 人数
enum MemberCount {
  number1,
  number2,
}

//質問内容
Map<QuestionContent, String> questionContentLabels = {
  QuestionContent.private: "私生活の質問",
  QuestionContent.work: "仕事の質問",
  QuestionContent.students_themselves: "学生自体の質問",
  QuestionContent.love_questions: "恋の質問",
  QuestionContent.tricky_question: "Hな質問",
};

//ランダムか順番
Map<OutputOrder, String> outputOrder = {
  OutputOrder.random: "ランダム",
  OutputOrder.norandom: "ランダムなし",
};

//質問数
Map<QuestionNumber, String> questionnumberLabel = {
  QuestionNumber.TYPE1: "5",
  QuestionNumber.TYPE2: "10",
  QuestionNumber.TYPE3: "15",
  QuestionNumber.TYPE4: "20",
};

Map<MemberCount, String> memberCount = {
  MemberCount.number1: "1",
  MemberCount.number2: "複数人",
};
