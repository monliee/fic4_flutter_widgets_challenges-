import 'package:flutter/material.dart';
import 'package:project_flutter_pertama/tugas/basic_widget/image_widget.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FIC - Icon"),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.share,
                size: 32.0,
              ),
              const Icon(
                Icons.favorite,
                size: 36.0,
                color: Colors.red,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ImageWidget(),
                    ),
                  );
                },
                child: const Text('Buat ke Page ImageWidget'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
