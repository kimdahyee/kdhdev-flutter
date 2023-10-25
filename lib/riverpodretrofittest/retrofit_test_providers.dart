import 'package:dio/dio.dart';
import 'package:kdhdev/riverpodretrofittest/api/post_api.dart';

final PostApi client = PostApi(
  Dio(
    BaseOptions(
        contentType: "application/json",
        baseUrl: 'https://jsonplaceholder.typicode.com'),
  ),
);
