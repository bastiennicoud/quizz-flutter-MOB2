import 'dart:convert';

import 'package:test_flutter/quizz/Question.dart';
import 'package:test_flutter/quizz/providers/Provider.dart';
import 'package:http/http.dart' as http;

class ApiProvider extends Provider {

  String endpoint;

  ApiProvider({
    this.endpoint: 'http://172.20.10.3:4567/questions/next'
  });

  Future<Question> getNextQuestion() async {
    var response = await http.get(endpoint);
    var data = json.decode(response.body);
    return Question.fromJson(data);
  }

}