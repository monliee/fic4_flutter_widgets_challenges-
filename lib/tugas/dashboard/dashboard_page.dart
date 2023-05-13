import 'package:flutter/material.dart';
import 'package:project_flutter_pertama/tugas/basic_form/dialog_widget.dart';
import 'package:project_flutter_pertama/tugas/basic_layout/aspectratio_widget.dart';
import 'package:project_flutter_pertama/tugas/basic_widget/button_widget.dart';
import 'package:project_flutter_pertama/tugas/dashboard/widget/custom_navbar.dart';
import 'package:project_flutter_pertama/tugas/home/fic4_flutter_widgets_challenges..dart';
import 'package:project_flutter_pertama/tugas/navigation/bottom_navbar.dart';
import 'package:project_flutter_pertama/tugas/stateful_sample/stateless_stateful_widget.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _selectedIndex = 0;

  Widget body() {
    switch (_selectedIndex) {
      case 0:
        return const HomePage();

      case 1:
        return const StatelessStatefulWidget();

      case 2:
        return const BottomNavbarWidget();

      case 3:
        return const ButtonWidget();

      case 4:
        return const AspectRatioWidget();

      case 5:
        return const DialogWiget();

      default:
        return const HomePage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blue,
      body: body(),
      bottomNavigationBar: CustomBottomNavigationBar(
        onIndexChanged: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
      ),
    );
  }
}
