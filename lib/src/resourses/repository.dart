import 'dart:async';

import 'package:bloc_practice/src/models/item_model.dart';
import 'package:bloc_practice/src/resourses/movie_api_provider.dart';

class Repository{
  final movieApiProvider = MovieApiProvider();

  Future<ItemModel> fetchAllMovies() =>
  movieApiProvider.fetchMovieList();
}