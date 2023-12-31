//質問内容
// ignore_for_file: constant_identifier_names

enum QuestionContent {
  private,
  work,
  students_themselves,
  // love_questions,
  // tricky_question
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

enum PrivateQuestion {
  Question1,
  Question2,
  Question3,
  Question4,
  Question5,
  Question6,
  Question7,
  Question8,
  Question9,
  Question10,
  Question11,
  Question12,
  Question13,
  Question14,
  Question15,
  Question16,
  Question17,
  Question18,
  Question19,
  Question20,
}

enum WorkQuestion {
  Question1,
  Question2,
  Question3,
  Question4,
  Question5,
  Question6,
  Question7,
  Question8,
  Question9,
  Question10,
  Question11,
  Question12,
  Question13,
  Question14,
  Question15,
  Question16,
  Question17,
  Question18,
  Question19,
  Question20,
}

enum StudentsThemselves {
  Question1,
  Question2,
  Question3,
  Question4,
  Question5,
  Question6,
  Question7,
  Question8,
  Question9,
  Question10,
  Question11,
  Question12,
  Question13,
  Question14,
  Question15,
  Question16,
  Question17,
  Question18,
  Question19,
  Question20,
}

enum LoveQuestions {
  Question1,
  Question2,
  Question3,
  Question4,
  Question5,
  Question6,
  Question7,
  Question8,
  Question9,
  Question10,
  Question11,
  Question12,
  Question13,
  Question14,
  Question15,
  Question16,
  Question17,
  Question18,
  Question19,
  Question20,
}

// enum TrickyQuestion {
//   Question1,
//   Question2,
//   Question3,
//   Question4,
//   Question5,
//   Question6,
//   Question7,
//   Question8,
//   Question9,
//   Question10,
//   Question11,
//   Question12,
//   Question13,
//   Question14,
//   Question15,
//   Question16,
//   Question17,
//   Question18,
//   Question19,
//   Question20,
// }

//質問内容
Map<QuestionContent, String> questionContentLabels = {
  QuestionContent.private: "私生活の質問",
  QuestionContent.work: "仕事の質問",
  QuestionContent.students_themselves: "学生自体の質問",
  // QuestionContent.love_questions: "恋の質問",
  // QuestionContent.tricky_question: "Hな質問",
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

Map<PrivateQuestion, String> privateQuestionLabel = {
  PrivateQuestion.Question1: "週末に何をして過ごすのが好きですか？",
  PrivateQuestion.Question2: "自分の料理の中で得意なものはありますか？",
  PrivateQuestion.Question3: "最後に行ったレストランでのおすすめメニューは何ですか？",
  PrivateQuestion.Question4: "朝型派？夜型派？それともどちらでも？",
  PrivateQuestion.Question5: "気分をリフレッシュさせるためにすることはありますか？",
  PrivateQuestion.Question6: "あなたの部屋に飾っているポスターやアートはありますか？",
  PrivateQuestion.Question7: "睡眠に関する独自のルーティンはありますか？",
  PrivateQuestion.Question8: "毎日のスキンケアや美容に気を使っていますか？",
  PrivateQuestion.Question9: "ショッピングの際、何を一番に見ることが多いですか？",
  PrivateQuestion.Question10: "雨の日に好きな過ごし方はありますか？",
  PrivateQuestion.Question11: "最後にハマったテレビ番組や映画は何ですか？",
  PrivateQuestion.Question12: "お気に入りの音楽やアーティストはありますか？",
  PrivateQuestion.Question13: "週に何回運動をしていますか？何をしていますか？",
  PrivateQuestion.Question14: "自分の家で過ごす時間が多いですか、それとも外出することが多いですか？",
  PrivateQuestion.Question15: "特にこだわっているファッションのスタイルはありますか？",
  PrivateQuestion.Question16: "家でペットと暮らしている場合、そのペットについて教えてください。",
  PrivateQuestion.Question17: "お気に入りの季節や季節ごとのアクティビティはありますか？",
  PrivateQuestion.Question18: "休日に友達や家族とよくするアクティビティは何ですか？",
  PrivateQuestion.Question19: "リラックスするためによく使う方法はありますか？",
  PrivateQuestion.Question20: "自分の部屋や生活空間にこだわりがありますか？",
};

Map<WorkQuestion, String> workQuestionLabel = {
  WorkQuestion.Question1: "仕事での理想的な相棒は？",
  WorkQuestion.Question2: "キャリアにおいて最後に一緒に成功を共有した瞬間は？",
  WorkQuestion.Question3: "仕事でのベストドレッサーは誰ですか？",
  WorkQuestion.Question4: "プロジェクトの途中で助け合ったエピソードは？",
  WorkQuestion.Question5: "仕事でのワクワクする瞬間は何ですか？",
  WorkQuestion.Question6: "ビジネススキルの向上のために共に挑戦したいことは？",
  WorkQuestion.Question7: "仕事でのストレス発散法は？",
  WorkQuestion.Question8: "一番思い入れのあるプロジェクトは？",
  WorkQuestion.Question9: "ビジョンや目標に向かって一緒に進むことはできますか？",
  WorkQuestion.Question10: "仕事の成功を祝うなら、どんなディナーがいいと思いますか？",
  WorkQuestion.Question11: "プレゼンテーションや会議での自信を持つための秘訣は？",
  WorkQuestion.Question12: "仕事での失敗から学んだ教訓は？",
  WorkQuestion.Question13: "一緒に働くとしたら、どんな仕事が合いそうだと思いますか？",
  WorkQuestion.Question14: "成功の秘訣やモットーはありますか？",
  WorkQuestion.Question15: "仕事での困難に立ち向かうとき、どのようにして前向きなエネルギーを保っていますか？",
  WorkQuestion.Question16: "ビジネスの世界での冒険心をくすぐる瞬間は？",
  WorkQuestion.Question17: "チームワークが必要な状況でのあなたの役割は？",
  WorkQuestion.Question18: "プレゼンテーションや提案での緊張を和らげるための方法はありますか？",
  WorkQuestion.Question19: "仕事がうまくいかないとき、どのようにして立ち直りますか？",
  WorkQuestion.Question20: "ビジネスの成功を祝うとしたら、どんなサプライズが喜ばれると思いますか？",
};

Map<StudentsThemselves, String> studentsThemselvesQuestionLabel = {
  StudentsThemselves.Question1: "学生時代における最も印象深い出来事は何ですか？",
  StudentsThemselves.Question2: "大学での専攻や学んだことについて教えてください。",
  StudentsThemselves.Question3: "サークルや部活に所属していたら教えてください。",
  StudentsThemselves.Question4: "あなたの親友や仲の良い友人について教えてください。",
  StudentsThemselves.Question5: "卒業後の進路やキャリアについて考えていたことはありますか？",
  StudentsThemselves.Question6: "学生時代に得た一番大きな教訓は何ですか？",
  StudentsThemselves.Question7: "自分が尊敬していた先生や教授について教えてください。",
  StudentsThemselves.Question8: "学生時代の自分にアドバイスできるなら、何を伝えますか？",
  StudentsThemselves.Question9: "キャンパスでのお気に入りの場所やスポットはありますか？",
  StudentsThemselves.Question10: "学生時代に始めて良かった趣味や活動はありますか？",
  StudentsThemselves.Question11: "クラスでのおもしろいエピソードやできごとを教えてください。",
  StudentsThemselves.Question12: "学生時代の友情にまつわる思い出深い瞬間は何ですか？",
  StudentsThemselves.Question13: "大学生活で築いたつながりや友達に感謝していることはありますか？",
  StudentsThemselves.Question14: "学生時代の恋愛経験や初恋の思い出はありますか？",
  StudentsThemselves.Question15: "学生時代に読んだ本や観た映画でおすすめの作品はありますか？",
  StudentsThemselves.Question16: "将来の夢や目標について教えてください。",
  StudentsThemselves.Question17: "学生時代に挑戦したことで得た成果や成功体験は何ですか？",
  StudentsThemselves.Question18: "大学での最後の一週間、何をして過ごしましたか？",
  StudentsThemselves.Question19: "学生時代に学んだ価値観や信念はありますか？",
  StudentsThemselves.Question20: "最後の卒業式での感動的な瞬間を教えてください。",
};

Map<LoveQuestions, String> loveQuestionsQuestionLabel = {
  LoveQuestions.Question1: "理想のデートはどんなものですか？",
  LoveQuestions.Question2: "これまでの恋愛経験で学んだことはありますか？",
  LoveQuestions.Question3: "結婚に対する考えや希望はありますか？",
  LoveQuestions.Question4: "付き合っているときに大切にしていることは何ですか？",
  LoveQuestions.Question5: "今までで一番感動した恋愛映画や小説はありますか？",
  LoveQuestions.Question6: "理想の相手の特徴や条件は何ですか？",
  LoveQuestions.Question7: "初対面の異性に興味を持たせるためのコツはありますか？",
  LoveQuestions.Question8: "好きな人にアプローチする際に心がけていることは何ですか？",
  LoveQuestions.Question9: "失恋から立ち直るための方法はありますか？",
  LoveQuestions.Question10: "お互いにとっての理想の関係の形は何ですか？",
  LoveQuestions.Question11: "相手の気を引くためにすることはありますか？",
  LoveQuestions.Question12: "交際中、一番印象に残っているデートは何ですか？",
  LoveQuestions.Question13: "お互いにとって大切な愛情表現やコミュニケーション方法はありますか？",
  LoveQuestions.Question14: "将来のパートナーと共有したい夢や目標はありますか？",
  LoveQuestions.Question15: "お互いの価値観や信念が合うと重要だと思いますか？",
  LoveQuestions.Question16: "交際中、最も困難だった瞬間は何でしたか？",
  LoveQuestions.Question17: "相手との喧嘩や意見の不一致をどのように解決していますか？",
  LoveQuestions.Question18: "相手に対してどんなところで癒されますか？",
  LoveQuestions.Question19: "交際中、お互いに大切にしているルーティンはありますか？",
  LoveQuestions.Question20: "今後の恋愛において大切にしたい価値観や教訓はありますか？",
};

// Map<TrickyQuestion, String> trickyQuestionQuestionLabel = {
//   TrickyQuestion.Question1: "",
//   TrickyQuestion.Question2: "",
//   TrickyQuestion.Question3: "",
//   TrickyQuestion.Question4: "",
//   TrickyQuestion.Question5: "",
//   TrickyQuestion.Question6: "",
//   TrickyQuestion.Question7: "",
//   TrickyQuestion.Question8: "",
//   TrickyQuestion.Question9: "",
//   TrickyQuestion.Question10: "",
//   TrickyQuestion.Question11: "",
//   TrickyQuestion.Question12: "",
//   TrickyQuestion.Question13: "",
//   TrickyQuestion.Question14: "",
//   TrickyQuestion.Question15: "",
//   TrickyQuestion.Question16: "",
//   TrickyQuestion.Question17: "",
//   TrickyQuestion.Question18: "",
//   TrickyQuestion.Question19: "",
//   TrickyQuestion.Question20: "",
// };
