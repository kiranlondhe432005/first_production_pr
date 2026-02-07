import 'package:flutter/material.dart';
import '../../widgets/primary_button.dart';

class PhysicalHarassmentScreen extends StatelessWidget {
  const PhysicalHarassmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        title: const Text(
          'Physical Harassment',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Image.asset('assets/images/physical.png', height: 220),
            const SizedBox(height: 16),
            const Text(
              'Physical harassment includes unwanted physical contact such as touching, pushing, hitting, blocking movement, or any action that violates personal space or safety.',
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
