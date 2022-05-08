import 'package:flutter/material.dart';
import 'package:simple_movie/Models/MovieItem.dart';
import 'package:simple_movie/UI/Components/MovieImage.dart';

class MovieListItem extends StatelessWidget {
  MovieListItem({
    required this.movie,
    required this.onTap,
  });

  final MovieItem movie;
  final void Function() onTap;

  @override
  Widget build(context) => Column(children: [
        ListTile(
          leading: MovieImage(
            path: movie.posterPath,
            width: 50,
          ),
          title: Text(movie.title, style: TextStyle(fontSize: 16.0)),
          subtitle: Text("Popularity: ${movie.popularity}"),
          trailing: const Icon(Icons.chevron_right, size: 30),
          onTap: () => onTap(),
        ),
        Divider()
      ]);
}
