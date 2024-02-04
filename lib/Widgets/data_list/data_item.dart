import 'package:fl_mywallet/models/data.dart';
import 'package:flutter/material.dart';

class dataItem extends StatelessWidget {
  const dataItem(this.data, {super.key});

  final Data data;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        child: Column(
          children: [
            Text(data.title),
            const SizedBox(
              height: 4.0,
            ),
            Row(
              children: [
                Text('\$${data.amount.toStringAsFixed(2)}'),
                const Spacer(),
                Row(
                  children: [
                    Icon(categoryIcons[data.category]),
                    const SizedBox(
                      width: 8.0,
                    ),
                    Text(data.formattedDate),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
