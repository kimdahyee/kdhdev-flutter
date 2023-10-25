import 'package:auto_route/auto_route.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kdhdev/riverpodretrofittest/model/post.dart';
import 'package:kdhdev/riverpodretrofittest/api/post_api.dart';

@RoutePage()
class RetrofitTestPage extends HookConsumerWidget {
  const RetrofitTestPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: _buildBody(context),
    );
  }

  FutureBuilder<List<Post>> _buildBody(
    BuildContext context,
  ) {
    final PostApi client = PostApi(
      Dio(
        BaseOptions(
            contentType: "application/json",
            baseUrl: 'https://jsonplaceholder.typicode.com'),
      ),
    );

    return FutureBuilder<List<Post>>(
      future: client.getPosts(),
      builder: (context, snapshot) {
        // snapshot은 Future 결과를 나타내는데 사용
        if (snapshot.connectionState == ConnectionState.done) {
          final List<Post> posts = snapshot.data ?? <Post>[];
          return _buildPosts(context, posts);
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

  Widget _buildPosts(BuildContext context, List<Post> posts) {
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: (context, index) {
        final Post item = posts[index];
        return Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            item.title ?? '',
          ),
        );
      },
    );
  }
}
