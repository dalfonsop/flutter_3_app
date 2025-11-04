import 'package:flutter_application_3/domain/entities/video_post.dart';

class LocalVideoModel {
  String name;
  String videoUrl;
  int likes;
  int views;

  LocalVideoModel({
    required this.name,
    required this.videoUrl,
     this.likes = 0,
     this.views = 0,
  });

  factory LocalVideoModel.fromJsonMap(Map<String, dynamic> json) => LocalVideoModel(
    name: json['name'] ?? 'no video name',
    videoUrl: json['videoUrl'] ?? 'no video found',
    likes: json['likes'] ?? 0,
    views: json['views'] ?? 0,
  );

  VideoPost toVideoPostEntity() => VideoPost(caption: name, videoUrl: videoUrl, likes: likes, views: views);
}
