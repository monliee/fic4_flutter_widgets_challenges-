import 'package:flutter/material.dart';
import 'package:project_flutter_pertama/tugas/basic_layout/gridview_widget.dart';

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('JagoFlutter - Expanded'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              children: const [
                Icon(Icons.arrow_back_ios),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'List Checklist',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
                Icon(
                  Icons.check,
                  color: Colors.blue,
                )
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const GridViewWidget(),
                  ),
                );
              },
              child: const Text('Buat ke Page GridViewWidget'),
            ),
          ],
        ),
      ),
    );
  }
}
