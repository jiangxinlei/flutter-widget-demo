import 'package:flutter/material.dart';

class DataTableWidget extends StatefulWidget {
  @override
  _DataTableWidgetState createState() => _DataTableWidgetState();
}

class _DataTableWidgetState extends State<DataTableWidget> {

  final List<Dessert> kDessert = <Dessert>[
    Dessert('Frozen yogurt',                        159,  6.0,  24,  4.0,  87, 14,  1),
    Dessert('Ice cream sandwich',                   237,  9.0,  37,  4.3, 129,  8,  1),
    Dessert('Eclair',                               262, 16.0,  24,  6.0, 337,  6,  7),
    Dessert('Cupcake',                              305,  3.7,  67,  4.3, 413,  3,  8),
    Dessert('Gingerbread',                          356, 16.0,  49,  3.9, 327,  7, 16),
    Dessert('Jelly bean',                           375,  0.0,  94,  0.0,  50,  0,  0),
    Dessert('Lollipop',                             392,  0.2,  98,  0.0,  38,  0,  2),
    Dessert('Honeycomb',                            408,  3.2,  87,  6.5, 562,  0, 45),
    Dessert('Donut',                                452, 25.0,  51,  4.9, 326,  2, 22),
    Dessert('KitKat',                               518, 26.0,  65,  7.0,  54, 12,  6),
  ];

  final List<String> log = <String>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DataTable'),
      ),
      body: _buildTable(sortColumnIndex: 0, sortAscending: true)
    );
  }

  Widget _buildTable({ int sortColumnIndex, bool sortAscending }) {
    return DataTable(
      sortColumnIndex: sortColumnIndex,
      sortAscending: sortAscending,
      onSelectAll: (bool val) {
        log.add('select-all: $val');
        print(log);
      },
      columns: <DataColumn>[
        DataColumn(
          label: Text('Name'),
          tooltip: 'Name'
        ),
        DataColumn(
          label: Text('Calories'),
          tooltip: 'Calories',
          numeric: true,
          onSort: (int columnIndex, bool ascending) {
            log.add('column-sort: $columnIndex $ascending');
          }
        )
      ], 
      rows: kDessert.map<DataRow>((Dessert dessert) {
        return DataRow(
          key: Key(dessert.name),
          onSelectChanged: (bool selected) {
            log.add('row-selected: ${dessert.name}');
          },
          cells: <DataCell>[
            DataCell(
              Text(dessert.name)
            ),
            DataCell(
              Text('${dessert.calories}'),
              showEditIcon: true,
              onTap: () {
                log.add('cell-tap: ${dessert.calories}');
              }
            )
          ]
        );
      }).toList()
    );
  }
}

class Dessert {
  Dessert(this.name, this.calories, this.fat, this.carbs, this.protein, this.sodium, this.calcium, this.iron);

  final String name;
  final int calories;
  final double fat;
  final int carbs;
  final double protein;
  final int sodium;
  final int calcium;
  final int iron;
}