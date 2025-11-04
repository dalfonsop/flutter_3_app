import 'package:flutter/material.dart';
import 'package:flutter_application_3/presentation/providers/discover_provider.dart';
import 'package:flutter_application_3/presentation/widgets/shared/video_scrollable_view.dart';
import 'package:provider/provider.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final discoverProvider = context.watch<DiscoverProvider>();

    return Scaffold(
      body: discoverProvider.initialLoading
      ? Center(
        child: CircularProgressIndicator(strokeWidth: 2,))
      : VideoScrollableView(videos: discoverProvider.videos)
    );
  }
}