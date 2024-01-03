// import 'package:chewie/chewie.dart';
// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';
//
//
//
// class Video extends StatefulWidget {
//   final String videoUrl;
//
//   const Video({super.key,required this.videoUrl});
//
//   @override
//   _VideoState createState() => _VideoState();
// }
//
//
// class _VideoState extends State<Video> {
//   late VideoPlayerController _videoPlayerController;
//   late ChewieController _chewieController;
//
//   @override
//   void initState() {
//     super.initState();
//     _videoPlayerController = VideoPlayerController.network(('https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4').toString());
//     _chewieController = ChewieController(
//       videoPlayerController: _videoPlayerController,
//       aspectRatio: 16 / 9, // You can change this to match your video aspect ratio
//       autoPlay: true,
//       looping: true,
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body:
//       Padding(
//         padding: const EdgeInsets.only(top:30.0,bottom: 10.0),
//         child: Center(
//           child: Chewie(
//             controller: _chewieController,
//           ),
//         ),
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     _videoPlayerController.dispose();
//     _chewieController.dispose();
//     super.dispose();
//   }
// }
