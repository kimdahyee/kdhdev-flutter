import 'package:dio/dio.dart';
import 'package:kdhdev/riverpodretrofittest/model/post.dart';
import 'package:retrofit/retrofit.dart';

part 'post_api.g.dart';

@RestApi()
abstract class PostApi {
  factory PostApi(Dio dio, {String baseUrl}) = _PostApi;

  @GET('/posts')
  Future<List<Post>> getPosts();

  @GET('/post/{id}')
  Future<Post> getPostByID({
    @Path('id') required int id,
  });
}
