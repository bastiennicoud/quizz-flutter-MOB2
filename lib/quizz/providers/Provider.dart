import 'package:test_flutter/quizz/providers/ApiProvider.dart';
import 'package:test_flutter/quizz/providers/LocalProvider.dart';

class Provider {

  factory Provider.create(String type) {
    switch (type) {
      case "local":
        return LocalProvider();
      case "api":
        return ApiProvider();
      default:
        return LocalProvider();
    }
  }

}