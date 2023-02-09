import 'package:flutter/material.dart';

class DataTableWidget extends StatelessWidget {
  const DataTableWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle titles = TextStyle(
      fontStyle: FontStyle.italic,
      fontWeight: FontWeight.bold,
    );
    return DataTable(columns: [
      DataColumn(
          label: Text(
        'Name',
        style: titles,
      )),
      DataColumn(
          label: Text(
        'Age',
        style: titles,
      )),
      DataColumn(
          label: Text(
        'Color',
        style: titles,
      )),
    ], rows: [
      DataRow(cells: [
        DataCell(Text('Aung')),
        DataCell(Text('25')),
        DataCell(Text('Red')),
      ]),
      DataRow(cells: [
        DataCell(Text('Kaung')),
        DataCell(Text('20')),
        DataCell(Text('Green')),
      ]),
      DataRow(cells: [
        DataCell(Text('Myat')),
        DataCell(Text('30')),
        DataCell(Text('Blue')),
      ]),
    ]);
  }
}
