import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_movie/UI/Components/MovieListItem.dart';
import 'package:simple_movie/UI/Screens/PopularMovies/PopularMoviesViewModel.dart';

class PopularMoviesScreen extends StatelessWidget {
  final PopularMoviesViewModel viewModel = Get.put(PopularMoviesViewModel());

  PopularMoviesScreen({Key? key}) : super(key: key);

  @override
  Widget build(context) => Obx(() => Scaffold(
        appBar: AppBar(title: const Text('Popular Movies')),
        body: ListView(
          padding: const EdgeInsets.all(15),
          children: [
            for (var movie in viewModel.movies)
              MovieListItem(
                  movie: movie,
                  onTap: () => Get.toNamed("/detail", parameters: {
                        "movieId": "${movie.id}",
                        "title": "${movie.title}"
                      })),
            if (viewModel.canLoadNextPage.isTrue)
              ElevatedButton(
                onPressed: viewModel.fetchNextPageIfPossible,
                child: const Text("Load more movies"),
              ),
          ],
        ),
      ));
}
