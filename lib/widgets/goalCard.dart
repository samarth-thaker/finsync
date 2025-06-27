import 'package:flutter/material.dart';

class GoalCard extends StatelessWidget {
  final String title;
  final double amountSaved;
  final double targetAmount;

  const GoalCard({
    required this.title,
    required this.amountSaved,
    required this.targetAmount,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double progress = (targetAmount == 0) ? 0 : amountSaved / targetAmount;

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 3,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(height: 12),
            LinearProgressIndicator(
              value: progress.clamp(0, 1),
              minHeight: 6,
              backgroundColor: Colors.grey.shade300,
              color: Colors.green,
            ),
            SizedBox(height: 12),
            Text(
                "₹${amountSaved.toStringAsFixed(0)} / ₹${targetAmount.toStringAsFixed(0)}"),
          ],
        ),
      ),
    );
  }
}
