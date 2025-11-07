import 'package:flutter_application_3/domain/datasources/video_posts_datasource.dart';
import 'package:flutter_application_3/domain/entities/video_post.dart';
import 'package:flutter_application_3/domain/repositories/video_posts_repository.dart';

class VideoPostsRepositoryImpl implements VideoPostsRepository {
  final VideoPostsDatasource videosDatasource;

  VideoPostsRepositoryImpl({required this.videosDatasource});

  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userId) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
    return videosDatasource.getTrendingVideosByPage(page);
  }
}
