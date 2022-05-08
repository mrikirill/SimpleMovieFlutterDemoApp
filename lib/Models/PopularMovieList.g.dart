// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'PopularMovieList.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PopularMovieList _$PopularMovieListFromJson(Map<String, dynamic> json) =>
    PopularMovieList(
      page: json['page'] as int,
      totalPages: json['total_pages'] as int,
      totalResults: json['total_results'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => MovieItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PopularMovieListToJson(PopularMovieList instance) =>
    <String, dynamic>{
      'page': instance.page,
      'total_results': instance.totalResults,
      'total_pages': instance.totalPages,
      'results': instance.results,
    };
