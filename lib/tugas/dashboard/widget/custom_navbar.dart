import 'package:flutter/material.dart';

class CustomBottomNavigationBarItem {
  final Widget icon;
  final Color color;

  CustomBottomNavigationBarItem({required this.icon, required this.color});
}

class CustomBottomNavigationBar extends StatefulWidget {
  final ValueChanged<int> onIndexChanged;

  const CustomBottomNavigationBar({Key? key, required this.onIndexChanged})
      : super(key: key);

  @override
  CustomBottomNavigationBarState createState() =>
      CustomBottomNavigationBarState();
}

class CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;

  List<CustomBottomNavigationBarItem> items = [
    CustomBottomNavigationBarItem(
      icon: const Text(
        'Home Page',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      color: Colors.white,
    ),
    CustomBottomNavigationBarItem(
      icon: const Text(
        'Stateless\nStateful\nWidget',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      color: Colors.white,
    ),
    CustomBottomNavigationBarItem(
      icon: const Text(
        'Bottom\nNavbar\nWidget',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      color: Colors.white,
    ),
    CustomBottomNavigationBarItem(
      icon: const Text(
        'Basic Widget',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      color: Colors.white,
    ),
    CustomBottomNavigationBarItem(
      icon: const Text(
        'Basic Layout',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      color: Colors.white,
    ),
    CustomBottomNavigationBarItem(
      icon: const Text(
        'Basic Form',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      color: Colors.white,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: items.asMap().entries.map(
          (entry) {
            final index = entry.key;
            final item = entry.value;

            return GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = index;
                });
                widget.onIndexChanged(index);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ColorFiltered(
                    colorFilter: ColorFilter.mode(
                      _selectedIndex == index
                          ? item.color
                          : Colors.white.withOpacity(0.4),
                      BlendMode.srcIn,
                    ),
                    child: item.icon,
                  ),
                  const SizedBox(height: 5),
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    height: _selectedIndex == index ? 5 : 0,
                    width: 5,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _selectedIndex == index
                          ? item.color
                          : Colors.transparent,
                    ),
                  ),
                ],
              ),
            );
          },
        ).toList(),
      ),
    );
  }
}
