import 'package:get/get.dart';
import 'package:simple_movie/Models/MovieItem.dart';
import 'package:simple_movie/Services/MovieService.dart';

class MovieDetailViewModel extends GetxController {
  RxList<MovieItem> movies = <MovieItem>[].obs;
  int movieId = 0;

  MovieDetailViewModel({required this.movieId});

  @override
  void onReady() {
    super.onReady();
    fetchMovieDetail();
  }

  Future fetchMovieDetail() async {
    try {
      final res = await MovieService.getMovieDetail(movieId);
      movies.value = [res];
    } catch (e) {
      print(e.toString());
    }
  }
}
