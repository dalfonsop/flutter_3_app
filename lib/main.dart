import 'package:flutter/material.dart';
import 'package:flutter_application_3/config/themes/app_theme.dart';
import 'package:flutter_application_3/infrastructure/datasources/local_videos_datasource_impl.dart';
import 'package:flutter_application_3/infrastructure/repositories/video_posts_repository_impl.dart';
import 'package:flutter_application_3/presentation/providers/discover_provider.dart';
import 'package:flutter_application_3/presentation/screens/discover/discover_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    final videoPostRepository = VideoPostsRepositoryImpl(
      videosDatasource: LocalVideosDatasource()
    );

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(lazy: false,create: (_) => DiscoverProvider(videosRepository: videoPostRepository)..loadNextPage())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme().getTheme(),
        title: 'Material App',
        home: DiscoverScreen()
      ),
    );
  }
}