import 'package:flutter/material.dart';

class VerticalStepper extends StatelessWidget {
  final String currentStatus;

  const VerticalStepper({super.key, required this.currentStatus});

  static const steps = [
    'submitted',
    'review',
    'investigation',
    'resolved',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(steps.length, (index) {
        final stepStatus = steps[index];
        final isCompleted =
            steps.indexOf(currentStatus) > index;
        final isActive =
            steps.indexOf(currentStatus) == index;

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
              child: Text(getTitle(stepStatus)),
            ),
          ],
        );
      }),
    );
  }

  String getTitle(String status) {
    switch (status) {
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
