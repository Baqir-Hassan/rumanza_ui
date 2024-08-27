import 'package:flutter/material.dart';

class ProShop extends StatelessWidget {
  const ProShop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.white,
        ),
        title: const Text(
          'Pro Shop',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 12, 90, 12),
      ),
      body: Column(
        children: [
          Container(
            // padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: Border.all(
                    color: const Color.fromARGB(255, 179, 164, 164))),
            child: SizedBox(
              width: double.infinity,
              child: DataTable(
                columns: const [
                  DataColumn(label: Text('Sr')),
                  DataColumn(label: Text('Type')),
                  DataColumn(label: Text('Amount')),
                ],
                rows: const [
                  DataRow(
                    cells: [
                      DataCell(Text('1')),
                      DataCell(Text('Subscription 1')),
                      DataCell(Text('\$200')),
                    ],
                  ),
                  // Add more rows as needed
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
