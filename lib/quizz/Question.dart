class Question {

  String caption;
  List<String> answers;
  int correctAnswer;
  String hint;

  Question({
    this.caption,
    this.answers,
    this.correctAnswer,
    this.hint
  });

  factory Question.fromJson(Map<String, dynamic> json) => new Question(
    caption: json['caption'],
    answers: new List<String>.from(json['answers']),
    correctAnswer: json['correct_answer_index'],
    hint: json['hint']
  );

  bool isCorrectAnswer(String answer) => answers[correctAnswer] == answer;

}
