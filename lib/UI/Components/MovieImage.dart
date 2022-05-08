import 'package:flutter/material.dart';
import 'package:simple_movie/Models/MovieItem.dart';

class MovieImage extends StatelessWidget {
  MovieImage({
    required this.path,
    required this.width,
  });

  final String path;
  final double width;

  @override
  Widget build(context) => Image.network(
        "https://image.tmdb.org/t/p/w500" + path,
        width: width,
      );
}
