import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/transaction_model.dart' as txn_model;

class TransactionServices {
  // This list is unnecessary here. Leave state to the provider, not services.
  // Remove: List<Transaction> _transactions = [];

  /// Fetch transactions for the given user
   Future<List<txn_model.Transaction>> fetchTransactions(String uid) async {
    final snapshot = await FirebaseFirestore.instance
        .collection('users')
        .doc(uid)
        .collection('transactions')
        .orderBy('date', descending: true)
        .get();

    return snapshot.docs.map((doc) {
      return txn_model.Transaction.fromMap(doc.data(), doc.id);
    }).toList();
  }

  /// Add a transaction for the current user
  Future<void> addTransaction(txn_model.Transaction trx) async {
    final uid = FirebaseAuth.instance.currentUser!.uid;

    await FirebaseFirestore.instance
        .collection('users')
        .doc(uid) // ❗ Remove quotes: use variable, not string
        .collection('transactions')
        .add(trx.toMap()); // ❗ Don't use `toString()` — use `toMap()`
  }
}
