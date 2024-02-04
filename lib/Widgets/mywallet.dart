import 'package:fl_mywallet/Widgets/data_list/data_list.dart';
import 'package:fl_mywallet/models/data.dart';
import 'package:flutter/material.dart';

class MyWallet extends StatefulWidget {
  const MyWallet({super.key});

  @override
  State<MyWallet> createState() => _MyWalletState();
}

class _MyWalletState extends State<MyWallet> {
  //Data Dummy
  final List<Data> _registeredMyWallet = [
    Data(
        title: 'Flutter Course',
        amount: 19.99,
        date: DateTime.now(),
        category: Category.work),
    Data(
        title: 'Cinema',
        amount: 19.99,
        date: DateTime.now(),
        category: Category.chill),
    Data(
        title: 'Health',
        amount: 19.99,
        date: DateTime.now(),
        category: Category.health)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Wallet"),
        actions: [
          IconButton(
          onPressed: () {},
          icon: const Icon(
          Icons.add,
          size: 24.0,
          ),
          ),
        ],
      ),
      body: Column(
        children: [
          Text('KONTOL'),
          Expanded(
            child: dataList(data: _registeredMyWallet),
          )
        ],
      ),
    );
  }
}
