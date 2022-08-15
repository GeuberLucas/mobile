// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

import '../Models/itens_models.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController nameClienteController = TextEditingController();
  final TextEditingController amountController = TextEditingController();
  final TextEditingController amountInTextController = TextEditingController();
  List<ItensModel>? itens;
  ItensModel item = ItensModel();
  DateTime? date;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextField(
                decoration: const InputDecoration(
                  labelText: 'Nome do Cliente',
                ),
                controller: nameClienteController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextField(
                decoration: const InputDecoration(
                  labelText: 'Valor Total',
                ),
                controller: amountController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextField(
                decoration: const InputDecoration(
                  labelText: 'Valor por Extenso',
                ),
                controller: amountInTextController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child:
            )
          ],
        ),
      ),
    );
  }
}
