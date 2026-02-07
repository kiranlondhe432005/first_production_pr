import 'package:flutter/material.dart';
import '../../widgets/primary_button.dart';

class VerbalHarassmentScreen extends StatelessWidget {
  const VerbalHarassmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        title: const Text(
          'Verbal Harassment',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Image.asset('assets/images/verbal.png', height: 220),
            const SizedBox(height: 16),
            const Text(
              'Verbal harassment involves using abusive language, yelling, insulting, humiliating, or offensive language that causes emotional distress or creates an uncomfortable work environment.',
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
