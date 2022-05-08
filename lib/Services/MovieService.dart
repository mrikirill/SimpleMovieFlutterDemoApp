import 'package:simple_movie/Models/MovieItem.dart';
import 'package:simple_movie/Models/PopularMovieList.dart';
import 'package:simple_movie/Repositories/ApiRepository.dart';
import 'package:simple_movie/Utilities/ApiEndpoints.dart';

class MovieService {
  static Future<PopularMovieList> getPopularMovies({int page = 1}) async {
    final json = await ApiRepository.get(ApiEndpoints.moviePopular(page));
    return PopularMovieList.fromJson(json);
  }

  static Future<MovieItem> getMovieDetail(int id) async {
    final json = await ApiRepository.get(ApiEndpoints.movieDetail(id));
    return MovieItem.fromJson(json);
  }
}
