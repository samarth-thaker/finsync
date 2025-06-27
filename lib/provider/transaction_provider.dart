/* import 'package:finsync_2/services/transaction_services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:finsync_2/models/transaction_model.dart' as txn_model;

class Transaction {
  final String title;
  final double amount;
  final DateTime dateTime;
  Transaction({
    required this.title,
    required this.amount,
    required this.dateTime,
  });
}

class TransactionProvider with ChangeNotifier {
  List<txn_model.Transaction> _transactions = [];
  void addTransaction(txn_model.Transaction trs) {
    _transactions.add(trs);
    notifyListeners();
  }

  void deleteTransaction(String title) {
    final index = _transactions.indexWhere((g) => g.title == title);
    _transactions.removeAt(index);
    notifyListeners();
  }

   Future<void> fetchTransactions() async {
    final String uid = FirebaseAuth.instance.currentUser!.uid;
    final data = await TransactionServices().fetchTransactions(uid);
    _transactions = data;
    notifyListeners();
  }
}
 */