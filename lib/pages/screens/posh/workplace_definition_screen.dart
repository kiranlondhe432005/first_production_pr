import 'package:flutter/material.dart';
import '../../widgets/primary_button.dart';

class WorkplaceDefinitionScreen extends StatelessWidget {
  const WorkplaceDefinitionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        title: const Text(
          'Workplace Definition',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Image.asset('assets/images/workplace.png', height: 220),
            const SizedBox(height: 16),
            const Text(
              'The workplace includes the physical office, virtual work environments, work-related travel, and any location or platform where official work activities take place.',
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
