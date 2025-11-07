import 'package:flutter_application_3/domain/entities/video_post.dart';

abstract class VideoPostsRepository {

Future<List<VideoPost>> getFavoriteVideosByUser(String userId);
Future<List<VideoPost>> getTrendingVideosByPage(int page);

}