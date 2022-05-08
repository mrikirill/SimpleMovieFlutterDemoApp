import 'package:json_annotation/json_annotation.dart';

part 'MovieItem.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class MovieItem {
  final String posterPath;
  final bool adult;
  final String overview;
  final String releaseDate;
  final int id;
  final String originalTitle;
  final String originalLanguage;
  final String title;
  final int voteCount;
  final double popularity;

  MovieItem(
      {required this.posterPath,
      required this.adult,
      required this.overview,
      required this.releaseDate,
      required this.id,
      required this.originalTitle,
      required this.originalLanguage,
      required this.title,
      required this.voteCount,
      required this.popularity});

  factory MovieItem.fromJson(Map<String, dynamic> json) =>
      _$MovieItemFromJson(json);

  Map<String, dynamic> toJson() => _$MovieItemToJson(this);
}
