import 'package:flutter/material.dart';
import 'package:project_flutter_pertama/tugas/basic_layout/expanded_widget.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FIC - Column"),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Stylish Chair',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Rp 350.000',
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF9A9390),
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1,
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
                      builder: (context) => const ExpandedWidget(),
                    ),
                  );
                },
                child: const Text('Buat ke Page ExpandedWidget'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
