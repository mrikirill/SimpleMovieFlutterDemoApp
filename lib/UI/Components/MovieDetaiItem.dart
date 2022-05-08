import 'package:flutter/material.dart';
import 'package:simple_movie/Models/MovieItem.dart';
import 'package:simple_movie/UI/Components/MovieImage.dart';

class MovieDetaiItem extends StatelessWidget {
  MovieDetaiItem({
    required this.movie,
  });

  final MovieItem movie;

  @override
  Widget build(context) => Padding(
      padding: const EdgeInsets.all(15),
      child: Column(children: [
        Center(
          child: MovieImage(
            path: movie.posterPath,
            width: 300,
          ),
        ),
        Divider(),
        Text(movie.overview),
        Divider(),
        ListTile(
          title: Text("ID: "),
          subtitle: Text("${movie.id}"),
        ),
        ListTile(
          title: Text("Original language: "),
          subtitle: Text("${movie.originalLanguage}"),
        ),
        ListTile(
          title: Text("Original title: "),
          subtitle: Text("${movie.originalTitle}"),
        ),
        ListTile(
          title: Text("Votes: "),
          subtitle: Text("${movie.voteCount}"),
        ),
        ListTile(
          title: Text("Popularity: "),
          subtitle: Text("${movie.popularity}"),
        )
      ]));
}
