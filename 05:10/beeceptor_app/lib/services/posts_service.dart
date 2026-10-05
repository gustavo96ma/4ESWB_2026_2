import 'package:beeceptor_app/models/post.dart';
import 'package:dio/dio.dart';

class PostsService {
  final Dio _dio;

  PostsService(this._dio);

  Future<List<Post>> getPosts() async {
    final response = await _dio.get(
      'https://json-placeholder.mock.beeceptor.com/posts',
    );
    print('REPOSTA API: ${response.data}');
    return (response.data as List).map((e) => Post.fromJson(e)).toList();
  }
}
