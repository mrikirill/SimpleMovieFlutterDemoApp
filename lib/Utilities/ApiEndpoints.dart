const BASE_URL = "https://api.themoviedb.org/3/";

class ApiEndpoints {
  static String moviePopular(int page) {
    return BASE_URL + "movie/popular?page=$page";
  }

  static String movieDetail(int id) {
    return BASE_URL + "movie/$id";
  }
}
