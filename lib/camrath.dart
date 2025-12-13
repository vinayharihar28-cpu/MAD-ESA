import 'dart:io';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:tflite_flutter/tflite_flutter.dart';

List<CameraDescription>? cameras;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(PipeMeasureApp());
}

class PipeMeasureApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CameraScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CameraScreen extends StatefulWidget {
  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  CameraController? controller;
  File? imageFile;
  double? pipeRadius;

  @override
  void initState() {
    super.initState();
    controller = CameraController(
      cameras![0],
      ResolutionPreset.high,
      enableAudio: false,
    );
    controller!.initialize().then((_) {
      if (!mounted) return;
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  Future<void> captureImage() async {
    if (!controller!.value.isInitialized) return;

    final picture = await controller!.takePicture();
    File img = File(picture.path);

    setState(() => imageFile = img);

    await processImage(img);
  }

  Future<void> processImage(File image) async {
    // Use fixed coin size
    const double coinDiameterMm = 25.0; // Example: Indian 1 Rupee coin

    // *** Replace this section with ML detection output ***
    double coinPx = 120.0; // Pixel size from ML model
    double pipePx = 340.0;

    // scale
    double scale = coinDiameterMm / coinPx;
    double pipeMm = pipePx * scale;
    double radius = pipeMm / 2;

    setState(() {
      pipeRadius = radius;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (!controller!.value.isInitialized) {
      return Scaffold(
        appBar: AppBar(title: Text("Pipe Radius Measurement")),
        body: Center(child: CircularProgressIndicator()),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Pipe Radius Measurement"),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: CameraPreview(controller!),
          ),
          SizedBox(height: 10),

          ElevatedButton(
            onPressed: captureImage,
            child: Text("Capture Image"),
          ),

          if (imageFile != null)
            Column(
              children: [
                SizedBox(height: 10),
                Image.file(imageFile!, height: 200),
              ],
            ),

          if (pipeRadius != null)
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "Pipe Radius: ${pipeRadius!.toStringAsFixed(2)} mm",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            )
        ],
      ),
    );
  }
}
