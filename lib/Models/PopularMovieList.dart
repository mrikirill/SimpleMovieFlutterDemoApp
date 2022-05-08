import 'package:json_annotation/json_annotation.dart';
import 'package:simple_movie/Models/MovieItem.dart';
part 'PopularMovieList.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class PopularMovieList {
  final int page;
  final int totalResults;
  final int totalPages;
  final List<MovieItem> results;

  PopularMovieList(
      {required this.page,
      required this.totalPages,
      required this.totalResults,
      required this.results});

  factory PopularMovieList.fromJson(Map<String, dynamic> json) =>
      _$PopularMovieListFromJson(json);

  Map<String, dynamic> toJson() => _$PopularMovieListToJson(this);
}
