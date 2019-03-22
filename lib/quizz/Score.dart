class Score {

  int score;

  Score({ this.score });

  void incrementScore({ int amount: 1 }) {
    score += amount;
  }

  void decrementScore({ int amount: 1 }) {
    score -= amount;
  }

}
