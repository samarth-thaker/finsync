import 'package:cloud_firestore/cloud_firestore.dart';

class Transaction {
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final String type; // 'income' or 'expense'
  final String category;

  Transaction({
    required this.id,
    required this.title,
    required this.amount,
    required this.date,
    required this.type,
    required this.category,
  });

  // Convert Firestore doc to Transaction object
  factory Transaction.fromMap(Map<String, dynamic> data, String docId) {
    return Transaction(
      id: docId,
      title: data['title'] ?? '',
      amount: (data['amount'] as num).toDouble(),
      date: (data['date'] as Timestamp).toDate(),
      type: data['type'] ?? 'expense',
      category: data['category'] ?? 'Other',
    );
  }

  // Convert Transaction object to Firestore-compatible map
  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'amount': amount,
      'date': date,
      'type': type,
      'category': category,
    };
  }
}
