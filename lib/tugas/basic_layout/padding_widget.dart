import 'package:flutter/material.dart';
import 'package:project_flutter_pertama/tugas/basic_layout/row_widget.dart';

class PaddingWidget extends StatelessWidget {
  const PaddingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('JagoFlutter - Padding'),
        actions: const [],
      ),
      body: Container(
        height: 500,
        width: 300,
        margin: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(border: Border.all()),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                top: 30,
                bottom: 40,
              ),
              child: Column(
                children: [
                  const Text(
                    'Categories',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RowWidget(),
                        ),
                      );
                    },
                    child: const Text('Buat ke Page RowWidget'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
