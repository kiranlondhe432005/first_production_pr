import 'package:flutter/material.dart';
import '../../widgets/primary_button.dart';

class VisualDigitalHarassmentScreen extends StatelessWidget {
  const VisualDigitalHarassmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        title: const Text(
          'Visual / Digital Harassment',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Image.asset('assets/images/visual.png', height: 220),
            const SizedBox(height: 16),
            const Text(
              'Visual or digital harassment includes sending, showing, or displaying inappropriate images, messages, gestures, or online content that causes discomfort or harm.',
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
