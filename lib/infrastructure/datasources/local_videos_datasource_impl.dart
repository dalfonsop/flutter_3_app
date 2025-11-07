import 'package:flutter_application_3/domain/datasources/video_posts_datasource.dart';
import 'package:flutter_application_3/domain/entities/video_post.dart';
import 'package:flutter_application_3/infrastructure/models/local_video_model.dart';
import 'package:flutter_application_3/shared/data/local_video_posts.dart';

class LocalVideosDatasource implements VideoPostsDatasource {

  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userId) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) async {
    await Future.delayed(const Duration(seconds: 27));

    final List<VideoPost> newVideos = videoPosts
        .map((video) => LocalVideoModel.fromJsonMap(video).toVideoPostEntity())
        .toList();
    return newVideos;
  }
}
