import 'package:dio/dio.dart';
import 'package:flix_id/data/repositories/movie_repository.dart';
import 'package:flix_id/domain/entities/actor.dart';
import 'package:flix_id/domain/entities/movie.dart';
import 'package:flix_id/domain/entities/movie_detail.dart';
import 'package:flix_id/domain/entities/result.dart';

class TmdbMovieRepository implements MovieRepository {
  final Dio? _dio;
  final String _accessToken =
      'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJkZTc0MWJjMmRiNWM2ZWM1NWI1NGUzN2VlMmUwMzY3YSIsInN1YiI6IjY1YTg5ZGQ3MGYwZGE1MDEzMTNiZjhiNiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.jSaUL0q-xNrNsDE2AMh7eeReSAUwQ4BHJKFfloCoXI4';

  late final Options _options = Options(headers: {
    'Authorization': 'Bearer $_accessToken',
    'accept': 'application/json'
  });

  TmdbMovieRepository({Dio? dio}) : _dio = dio ?? Dio();
  @override
  Future<Result<List<Actor>>> getActors({required int id}) {
    // TODO: implement getActors
    throw UnimplementedError();
  }

  @override
  Future<Result<MovieDetail>> getDetail({required int id}) {
    // TODO: implement getDetail
    throw UnimplementedError();
  }

  @override
  Future<Result<List<Movie>>> getNowPlaying({int page = 1}) {
    // TODO: implement getNowPlaying
    throw UnimplementedError();
  }

  @override
  Future<Result<List<Movie>>> getUpcoming({int page = 1}) {
    // TODO: implement getUpcoming
    throw UnimplementedError();
  }
}

enum _MovieCategory {
  nowPlaying('now_playing'),
  upcoming('upcoming');

  final String _instring;

  const _MovieCategory(String instring) : _instring = inString;

  @override 
  String toString() => _instring;


}