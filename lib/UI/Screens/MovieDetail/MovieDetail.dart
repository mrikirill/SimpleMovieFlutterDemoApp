import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_movie/UI/Components/MovieDetaiItem.dart';
import 'package:simple_movie/UI/Screens/MovieDetail/MovieDetailViewModel.dart';

class MovieDetailScreen extends StatelessWidget {
  final MovieDetailViewModel viewModel = Get.put(MovieDetailViewModel(
      movieId: int.parse(Get.parameters["movieId"] ?? "")));

  MovieDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(context) => Scaffold(
      appBar: AppBar(title: Text(Get.parameters["title"] ?? "Movie")),
      body: Obx(
        () => ListView(
          padding: const EdgeInsets.all(15),
          children: [
            for (var movie in viewModel.movies) MovieDetaiItem(movie: movie)
          ],
        ),
      ));
}
