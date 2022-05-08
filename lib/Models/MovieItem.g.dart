// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'MovieItem.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieItem _$MovieItemFromJson(Map<String, dynamic> json) => MovieItem(
      posterPath: json['poster_path'] as String,
      adult: json['adult'] as bool,
      overview: json['overview'] as String,
      releaseDate: json['release_date'] as String,
      id: json['id'] as int,
      originalTitle: json['original_title'] as String,
      originalLanguage: json['original_language'] as String,
      title: json['title'] as String,
      voteCount: json['vote_count'] as int,
      popularity: (json['popularity'] as num).toDouble(),
    );

Map<String, dynamic> _$MovieItemToJson(MovieItem instance) => <String, dynamic>{
      'poster_path': instance.posterPath,
      'adult': instance.adult,
      'overview': instance.overview,
      'release_date': instance.releaseDate,
      'id': instance.id,
      'original_title': instance.originalTitle,
      'original_language': instance.originalLanguage,
      'title': instance.title,
      'vote_count': instance.voteCount,
      'popularity': instance.popularity,
    };
