import 'package:get/get.dart';
import 'package:simple_movie/Models/MovieItem.dart';
import 'package:simple_movie/Services/MovieService.dart';

class PopularMoviesViewModel extends GetxController {
  RxList<MovieItem> movies = <MovieItem>[].obs;
  Rx<int> page = 1.obs;
  Rx<bool> canLoadNextPage = true.obs;

  @override
  void onInit() {
    super.onInit();
    fetchNextPageIfPossible();
  }

  Future fetchNextPageIfPossible() async {
    if (!canLoadNextPage.value) {
      return;
    }
    print("Page: ${page.value}");

    try {
      final res = await MovieService.getPopularMovies(page: page.value);
      page.value += 1;
      movies.value += res.results;
      canLoadNextPage.value = page.value < res.totalPages;
    } catch (e) {
      print(e.toString());
      canLoadNextPage.value = false;
    }
  }
}
