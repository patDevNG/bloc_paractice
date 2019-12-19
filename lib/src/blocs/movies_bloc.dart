import 'package:rxdart/rxdart.dart';
import 'package:bloc_practice/src/models/item_model.dart';
import 'package:bloc_practice/src/resourses/repository.dart';

class MoviesBloc{
  final _repository = Repository();
  final _moviesFetcher = PublishSubject<ItemModel>();

  Stream<ItemModel> get allMovies => _moviesFetcher.stream;

  fetchAllMovies() async {
    ItemModel itemModel = await _repository.fetchAllMovies();
    _moviesFetcher.sink.add(itemModel);
  }

  dispose() {
    _moviesFetcher.close();
  }
}

final bloc = MoviesBloc();