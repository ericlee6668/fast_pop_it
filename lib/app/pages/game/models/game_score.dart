class GameScore {
  int? score;
  String? date;

  GameScore({this.score, this.date});

  Map<String, dynamic> toJson() {
    return {'score': score, 'date': date};
  }
  factory GameScore.fromJson(Map<String, dynamic> json) {
    return GameScore(
      score: json['score'],
      date: json['date'],
    );
  }
}
