import 'package:flutter/material.dart';
import '../../widgets/primary_button.dart';

class UploadEvidenceScreen extends StatelessWidget {
  const UploadEvidenceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        title: const Text(
          'Upload Evidence',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Image.asset('assets/images/upload.png', height: 220),
            const SizedBox(height: 16),
            const Text(
              'You may upload screenshots, photos, documents, or other relevant files that support your report. All information will be handled confidentially.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15),
            ),
            const Spacer(),
            const PrimaryButton(title: 'Continue'),
          ],
        ),
      ),
    );
  }
}
