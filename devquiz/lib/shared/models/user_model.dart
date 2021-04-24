import 'dart:convert';

class UserModel {
  final String name;
  final int score;
  final String photoUrl;
  UserModel({
    required this.name,
    required this.score,
    required this.photoUrl,
  });

  UserModel copyWith({
    String? name,
    int? score,
    String? photoUrl,
  }) {
    return UserModel(
      name: name ?? this.name,
      score: score ?? this.score,
      photoUrl: photoUrl ?? this.photoUrl,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'score': score,
      'photoUrl': photoUrl,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      name: map['name'],
      score: map['score']?.toInt(),
      photoUrl: map['photoUrl'],
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) => UserModel.fromMap(json.decode(source));

  @override
  String toString() => 'UserModel(name: $name, score: $score, photoUrl: $photoUrl)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is UserModel &&
      other.name == name &&
      other.score == score &&
      other.photoUrl == photoUrl;
  }

  @override
  int get hashCode => name.hashCode ^ score.hashCode ^ photoUrl.hashCode;
}