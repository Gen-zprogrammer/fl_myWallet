import 'package:fl_mywallet/Widgets/data_list/data_item.dart';
import 'package:fl_mywallet/models/data.dart';
import 'package:flutter/material.dart';

class dataList extends StatelessWidget {
  const dataList({
    super.key,
    required this.data,
  });

  final List<Data> data;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (ctx, index) => dataItem(data[index]),
    );
  }
}
