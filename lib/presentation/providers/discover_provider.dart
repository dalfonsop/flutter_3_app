import 'package:flutter/material.dart';
import 'package:flutter_application_3/domain/entities/video_post.dart';
import 'package:flutter_application_3/infrastructure/repositories/video_posts_repository_impl.dart';

class DiscoverProvider extends ChangeNotifier {
  bool initialLoading = true;
  List<VideoPost> videos = [];
  final VideoPostsRepositoryImpl videosRepository;

  DiscoverProvider( {required this.videosRepository});

  Future<void> loadNextPage() async {
    await Future.delayed(const Duration(seconds: 2));

    final newVideos = await videosRepository.getTrendingVideosByPage(1);

    videos.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }
}
