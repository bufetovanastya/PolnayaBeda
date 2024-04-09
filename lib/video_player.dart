import 'package:flutter/material.dart';
import 'package:flutter_grid_view/models/cars.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({Key? key, required this.index_car}) : super(key: key);
final int index_car;
  @override

  Widget build(BuildContext context) {
    String? videoID;
    videoID = YoutubePlayerController.convertUrlToId(carsList[index_car].video_path);
    final controller = YoutubePlayerController(params: YoutubePlayerParams(mute: false, showControls: true, showFullscreenButton: true, loop: false, color: Colors.red.toString()));
    controller.loadVideoById(videoId: videoID.toString());
    return YoutubePlayer(controller: controller,
    aspectRatio: 16/9,
    );
  }
}
