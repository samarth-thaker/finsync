
import 'package:finsync_2/provider/goal_provider.dart';
import 'package:finsync_2/widgets/goalCard.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          
          ActiveGoalsSection(),
        ],
      ),
    );
  }
}
class ActiveGoalsSection extends StatelessWidget {
  const ActiveGoalsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final goals = context.watch<GoalProvider>().activeGoals;

    if (goals.isEmpty) {
      return Text("No active goals");
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: goals.take(2).map((goal) {
        return GoalCard(
          title: goal.title,
          amountSaved: goal.amountSaved,
          targetAmount: goal.targetedAmount,
        );
      }).toList(),
    );
  }
}