import 'package:alias/core/database/database.dart';
import 'package:alias/core/injection.dart' as di;
import 'package:drift_db_viewer/drift_db_viewer.dart';
import 'package:flutter/material.dart';

class ViewDbRow extends StatelessWidget {
  const ViewDbRow({super.key});

  @override
  Widget build(BuildContext context) {
    final db = di.locator.get<Database>();

    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => Theme(
              data: ThemeData(),
              child: DriftDbViewer(db),
            ),
          ),
        );
      },
      child: const Text('Открыть базу'),
    );
  }
}
