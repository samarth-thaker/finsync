import 'package:finsync_2/widgets/customButton.dart';
import 'package:finsync_2/widgets/inputfield.dart';
import 'package:flutter/material.dart';

class TransactionsPage extends StatefulWidget {
  const TransactionsPage({super.key});

  @override
  State<TransactionsPage> createState() => _TransactionsPageState();
}

class _TransactionsPageState extends State<TransactionsPage> {
  final _amountController = TextEditingController();
  final _trxTitleController = TextEditingController();
  String selectedTransactionType = 'Expense';
  @override
  void addTransaction() {
    showBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Inputfield(
                  controller: _amountController,
                  keyboardType: TextInputType.number,
                  hintText: 'Amount',
                ),
                const SizedBox(
                  height: 15,
                ),
                Inputfield(
                  controller: _trxTitleController,
                  keyboardType: TextInputType.text,
                  hintText: 'What is this for',
                ),
                const SizedBox(
                  height: 15,
                ),
                DropdownButton(
                  value: selectedTransactionType,
                  onChanged: (newValue) {
                    setState(() {
                      selectedTransactionType = newValue!;
                    });
                  },
                  items: ["Expense", "Income"].map((type) {
                    return DropdownMenuItem(
                      value: type,
                      child: Text(type),
                    );
                  }).toList(),
                ),
                SizedBox(height: 15),
                Custombutton(
                    action: 'Add transaction',
                    onTap: () async=>{
                          
                        },
                    buttonWidth: MediaQuery.of(context).size.width * 0.8)
              ],
            ),
          );
        });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:
          FloatingActionButton(onPressed: () => addTransaction),
    );
  }
}
