import 'package:flutter/material.dart';
import 'package:project_flutter_pertama/tugas/navigation/tabbar_widget.dart';

class SliverWidget extends StatefulWidget {
  const SliverWidget({Key? key}) : super(key: key);

  @override
  State<SliverWidget> createState() => _SliverWidgetState();
}

class _SliverWidgetState extends State<SliverWidget> {
  bool pinned = true;
  bool snap = false;
  bool floating = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FIC - Sliver"),
        actions: const [],
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: pinned,
            snap: snap,
            floating: floating,
            expandedHeight: 160,
            flexibleSpace: const FlexibleSpaceBar(
              title: Text(
                'Sliver App Bar',
              ),
              background: FlutterLogo(),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Column(
                children: [
                  Container(
                    color: index.isOdd ? Colors.white : Colors.blue[200],
                    height: 100,
                    child: Center(
                      child: Text(
                        '$index',
                        textScaleFactor: 5,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return const TabbarWidget();
                          },
                        ),
                      );
                    },
                    child: const Text('Buat ke Page TabbarWidget'),
                  ),
                ],
              );
            }, childCount: 20),
          ),
        ],
      ),
    );
  }
}
