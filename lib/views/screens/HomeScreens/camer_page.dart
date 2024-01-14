import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class CameraScreen extends StatefulWidget {
  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  CameraController? _controller;

  @override
  void initState() {
    super.initState();
    _initializeCamera();
  }

  void _initializeCamera() async {
    List<CameraDescription> cameras = await availableCameras();
    if (cameras.isNotEmpty) {
      CameraDescription description = cameras[0];
      _controller = CameraController(description, ResolutionPreset.medium);
      await _controller!.initialize();
      if (!mounted) {
        return;
      }
      setState(() {});
    } else {
      print('No camera available');
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_controller == null) {
      return const Center(child: CircularProgressIndicator());
    }
    if (!_controller!.value.isInitialized) {
      return const Center(child: CircularProgressIndicator());
    }
    return AspectRatio(
      aspectRatio: _controller!.value.aspectRatio,
      child: CameraPreview(_controller!),
    );
  }
}
