import 'package:flutter/material.dart';
import 'package:project_flutter_pertama/tugas/navigation/navigation_push.dart';

class NavigationPop extends StatefulWidget {
  const NavigationPop({Key? key}) : super(key: key);

  @override
  State<NavigationPop> createState() => _NavigationPopState();
}

class _NavigationPopState extends State<NavigationPop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FIC - Navigation Pop"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Go back (pop)'),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NavigationPush(),
                    ),
                  );
                },
                child: const Text('Buat ke Page NavigationPush'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
