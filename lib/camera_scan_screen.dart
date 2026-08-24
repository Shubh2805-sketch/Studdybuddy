import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CameraScanScreen extends StatefulWidget {
  final String subject;
  final String chapter;

  const CameraScanScreen({
    super.key,
    required this.subject,
    required this.chapter,
  });

  @override
  State<CameraScanScreen> createState() =>
      _CameraScanScreenState();
}

class _CameraScanScreenState extends State<CameraScanScreen> {
  final ImagePicker picker = ImagePicker();

  File? image;

  Future<void> takePhoto() async {
    try {
      final XFile? picked = await picker.pickImage(
        source: ImageSource.camera,
        imageQuality: 85,
      );

      if (picked == null) return;

      setState(() {
        image = File(picked.path);
      });
    } catch (e) {
      if (!mounted) return;

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Could not open camera: $e'),
        ),
      );
    }
  }

  Future<void> choosePhoto() async {
    try {
      final XFile? picked = await picker.pickImage(
        source: ImageSource.gallery,
        imageQuality: 85,
      );

      if (picked == null) return;

      setState(() {
        image = File(picked.path);
      });
    } catch (e) {
      if (!mounted) return;

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Could not select image: $e'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      appBar: AppBar(
        backgroundColor: const Color(0xFFB71C1C),
        foregroundColor: Colors.white,
        title: const Text('Scan Question'),
      ),

      body: ListView(
        padding: const EdgeInsets.all(18),
        children: [

          Text(
            widget.chapter,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 10),

          const Text(
            'Take a photo of your question or choose an existing image.',
            style: TextStyle(
              color: Colors.white60,
              fontSize: 15,
            ),
          ),

          const SizedBox(height: 25),

          if (image != null)
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.file(
                image!,
                fit: BoxFit.cover,
              ),
            )
          else
            Container(
              height: 250,
              decoration: BoxDecoration(
                color: const Color(0xFF19191D),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.redAccent.withOpacity(0.5),
                ),
              ),
              child: const Center(
                child: Icon(
                  Icons.camera_alt_rounded,
                  color: Colors.redAccent,
                  size: 70,
                ),
              ),
            ),

          const SizedBox(height: 20),

          SizedBox(
            height: 55,
            child: ElevatedButton.icon(
              onPressed: takePhoto,
              icon: const Icon(Icons.camera_alt_rounded),
              label: const Text('Take Photo'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent,
                foregroundColor: Colors.white,
              ),
            ),
          ),

          const SizedBox(height: 12),

          SizedBox(
            height: 55,
            child: OutlinedButton.icon(
              onPressed: choosePhoto,
              icon: const Icon(Icons.photo_library_rounded),
              label: const Text('Choose from Gallery'),
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
                side: const BorderSide(
                  color: Colors.redAccent,
                ),
              ),
            ),
          ),

          if (image != null) ...[
            const SizedBox(height: 20),

            Container(
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: const Color(0xFF19191D),
                borderRadius: BorderRadius.circular(18),
              ),
              child: const Text(
                'Photo captured successfully. AI question solving from the image can be connected next.',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
