import 'package:flutter/material.dart';
import 'package:side_menu_bar/src/side_bar_menu_item.dart';

class SideMenuBar extends StatefulWidget {
  final List<Widget> sideMenuItems;
  final Color? backgroundColor;

  SideMenuBar({required this.sideMenuItems, this.backgroundColor});

  @override
  _SideMenuBarState createState() => _SideMenuBarState();
}

class _SideMenuBarState extends State<SideMenuBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: widget.backgroundColor ?? Colors.white,
      child: SingleChildScrollView(
        child: Wrap(
          children: widget.sideMenuItems.map((item) {
            return item;
          }).toList(),
        ),
      ),
    );
  }
}
