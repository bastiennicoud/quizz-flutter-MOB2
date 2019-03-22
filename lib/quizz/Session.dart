import 'package:test_flutter/quizz/Score.dart';
import 'package:test_flutter/quizz/providers/Provider.dart';

class Session {

  Provider questionProvider;

  Score score;

  Session() {
    this.questionProvider = Provider.create('api');
    this.score = Score();
  }

}
