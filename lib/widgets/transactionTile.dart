/* import 'package:flutter/material.dart';
import 'package:finsync_2/models/transaction_model.dart' as txn_model;
import 'package:intl/intl.dart';

class TransactionTile extends StatelessWidget {
  final txn_model.Transaction transaction;
  final DateTime? dueDate; 

  const TransactionTile({
    required this.transaction,
    this.dueDate,
    super.key,
  });

  Color fetchColor(String type) {
    return type.toLowerCase() == 'expense' ? Colors.red : Colors.green;
  }

  @override
  Widget build(BuildContext context) {
    final dateFormatted = DateFormat('dd MMM yyyy').format(transaction.date);
    /* final dueFormatted =
        dueDate != null ? DateFormat('dd MMM').format(dueDate!) : null; */

    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Title and Amount
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  transaction.title,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(
                  '₹ ${transaction.amount.toStringAsFixed(2)}',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: fetchColor(transaction.type)),
                ),
              ],
            ),

            const SizedBox(height: 8),

            /// Date and Due Date
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Date: $dateFormatted',
                  style: const TextStyle(color: Colors.grey, fontSize: 12),
                ),
                
              ],
            ),

            const SizedBox(height: 10),

           
            
          ],
        ),
      ),
    );
  }
}
 */