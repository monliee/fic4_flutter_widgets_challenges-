import 'package:flutter/material.dart';
import 'package:project_flutter_pertama/tugas/basic_widget/icon_widget.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FIC - Container"),
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            margin: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  offset: Offset.zero,
                  blurRadius: 15.0,
                ),
              ],
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
                  builder: (context) => const IconWidget(),
                ),
              );
            },
            child: const Text('Buat ke Page IconWidget'),
          ),
        ],
      ),
    );
  }
}
