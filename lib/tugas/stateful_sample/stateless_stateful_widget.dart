import 'package:flutter/material.dart';

class StatelessStatefulWidget extends StatefulWidget {
  const StatelessStatefulWidget({Key? key}) : super(key: key);

  @override
  State<StatelessStatefulWidget> createState() =>
      _StatelessStatefulWidgetState();
}

class _StatelessStatefulWidgetState extends State<StatelessStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.orange,
        centerTitle: true,
        title: const Text(
          "FIC - stateless stateful",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: const [],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: const [
                ShowText(text: 'Show Text Stateless'),
                ChangeTextWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ChangeTextWidget extends StatefulWidget {
  const ChangeTextWidget({super.key});

  @override
  State<ChangeTextWidget> createState() => _ChangeTextWidgetState();
}

class _ChangeTextWidgetState extends State<ChangeTextWidget> {
  String text = 'FIC';
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('$text - Stateful'),
        ElevatedButton(
          onPressed: () {
            String newText = DateTime.now().toIso8601String();
            setState(() {
              text = newText;
            });
          },
          child: const Text('Change Text'),
        )
      ],
    );
  }
}

class ShowText extends StatelessWidget {
  final String text;
  const ShowText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}
