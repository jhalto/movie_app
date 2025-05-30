import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerScreen extends StatefulWidget {
  final String videoPath;

  const VideoPlayerScreen({super.key, required this.videoPath});

  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late VideoPlayerController _controller;
  bool _showControls = true;
  Timer? _hideTimer;
  double _rotationAngle = 0.0;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(widget.videoPath)
      ..initialize().then((_) {
        setState(() {});
      });
    _controller.setLooping(true);
  }

  @override
  void dispose() {
    _controller.dispose();
    _hideTimer?.cancel();
    super.dispose();
  }

  void _togglePlayPause() {
    setState(() {
      _controller.value.isPlaying ? _controller.pause() : _controller.play();
    });
    _startHideTimer();
  }

  void _fastForward() {
    final currentPosition = _controller.value.position;
    _controller.seekTo(currentPosition + const Duration(seconds: 10));
    _startHideTimer();
  }

  void _rewind() {
    final currentPosition = _controller.value.position;
    _controller.seekTo(currentPosition - const Duration(seconds: 10));
    _startHideTimer();
  }

  double _rotateButtonAngle = 0.0;
  void _rotateVideo() {
    setState(() {
      if (_rotationAngle == 0) {
        _rotationAngle = 90;
        _rotateButtonAngle = pi / 2; // 90 degrees in radians
      } else {
        _rotationAngle = 0;
        _rotateButtonAngle = 0;
      }
    });
    _startHideTimer();
  }

  void _toggleControlsVisibility() {
    setState(() {
      _showControls = !_showControls;
    });
    if (_showControls) {
      _startHideTimer();
    }
  }

  void _startHideTimer() {
    _hideTimer?.cancel();
    if (_controller.value.isPlaying) {
      _hideTimer = Timer(const Duration(seconds: 5), () {
        setState(() {
          _showControls = false;
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:
          _controller.value.isInitialized
              ? GestureDetector(
                onTap: _toggleControlsVisibility,
                child: Stack(
                  children: [
                    // Video centered and rotated, fills the screen
                    Center(
                      child: Transform.rotate(
                        angle: _rotationAngle * pi / 180,
                        child: SizedBox(
                          width:
                              _rotationAngle % 180 == 0
                                  ? MediaQuery.of(context).size.width
                                  : MediaQuery.of(context).size.height,
                          height:
                              _rotationAngle % 180 == 0
                                  ? MediaQuery.of(context).size.height
                                  : MediaQuery.of(context).size.width,
                          child: FittedBox(
                            fit:
                                _rotationAngle % 180 == 0
                                    ? BoxFit.contain
                                    : BoxFit.cover,
                            child: SizedBox(
                              width: _controller.value.size.width,
                              height: _controller.value.size.height,
                              child: VideoPlayer(_controller),
                            ),
                          ),
                        ),
                      ),
                    ),

                    // Controls overlay positioned at bottom center
                    if (_showControls)
                      Positioned.fill(
                        child: Center(
                          child:
                              _rotationAngle % 180 == 0
                                  ? Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: _buildControlButtons(),
                                  )
                                  : Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: _buildControlButtons(),
                                  ),
                        ),
                      ),
                  ],
                ),
              )
              : const Center(child: CircularProgressIndicator()),
    );
  }

  List<Widget> _buildControlButtons() {
    return [
      IconButton(
        icon: const Icon(Icons.replay_10, color: Colors.white),
        iconSize: 36,
        onPressed: _rewind,
      ),
      IconButton(
        icon: Icon(
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
          color: Colors.white,
        ),
        iconSize: 48,
        onPressed: _togglePlayPause,
      ),
      IconButton(
        icon: const Icon(Icons.forward_10, color: Colors.white),
        iconSize: 36,
        onPressed: _fastForward,
      ),
      IconButton(
        iconSize: 36,
        onPressed: _rotateVideo,
        icon: Transform.rotate(
          angle: _rotateButtonAngle,
          child: const Icon(Icons.rotate_right, color: Colors.white),
        ),
      ),
    ];
  }
}
