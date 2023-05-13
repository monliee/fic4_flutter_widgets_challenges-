import 'package:flutter/material.dart';
import 'package:project_flutter_pertama/tugas/navigation/sliver_widget.dart';

import 'navigation_pop.dart';

class NavigationPush extends StatefulWidget {
  const NavigationPush({Key? key}) : super(key: key);

  @override
  State<NavigationPush> createState() => _NavigationPushState();
}

class _NavigationPushState extends State<NavigationPush> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FIC - navigation push"),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return const SliverWidget();
                      },
                    ),
                  );
                },
                child: const Text('Buat ke Page SliverWidget'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
