import 'package:flutter/material.dart';

class ComplaintStepper extends StatelessWidget {
  final String currentStatus;

  ComplaintStepper({super.key, required this.currentStatus});

  final steps = const [
    'submitted',
    'review',
    'investigation',
    'resolved',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(steps.length, (index) {
        final step = steps[index];
        final stepIndex = steps.indexOf(currentStatus);

        final isCompleted = index < stepIndex;
        final isActive = index == stepIndex;

        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Icon(
                  isCompleted
                      ? Icons.check_circle
                      : isActive
                          ? Icons.timelapse
                          : Icons.radio_button_unchecked,
                  color: Colors.black,
                ),
                if (index != steps.length - 1)
                  Container(
                    width: 2,
                    height: 40,
                    color: Colors.grey,
                  ),
              ],
            ),
            const SizedBox(width: 12),
            Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Text(_label(step)),
            ),
          ],
        );
      }),
    );
  }

  String _label(String step) {
    switch (step) {
      case 'submitted':
        return 'Report Submitted';
      case 'review':
        return 'Under Review by IC';
      case 'investigation':
        return 'Investigation In Progress';
      case 'resolved':
        return 'Resolution & Outcome';
      default:
        return '';
    }
  }
}
