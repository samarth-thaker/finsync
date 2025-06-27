import 'package:flutter/material.dart';

class Goal {
  final String title;
  final double targetedAmount;
  double amountSaved;
  Goal({
    required this.title,
    required this.targetedAmount,
    required this.amountSaved,
  });
}

class GoalProvider with ChangeNotifier {
  List<Goal> _goals = [];
  List<Goal> get activeGoals => _goals;
  void addGoal(Goal goal) {
    _goals.add(goal);
    notifyListeners();
  }
  void updateGoal(String title, double newSavedAmount) {
    final index = _goals.indexWhere((g) => g.title == title);
    if (index != -1) {
      _goals[index].amountSaved = newSavedAmount;
      notifyListeners();
    }
  }

}
