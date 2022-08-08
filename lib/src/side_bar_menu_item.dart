import 'package:flutter/material.dart';

class SideBarMenuItem extends StatefulWidget {
  final Icon icon;
  final Text text;
  final VoidCallback onPressed;

  SideBarMenuItem({required this.icon, required this.text, required this.onPressed});

  @override
  _SideBarMenuItemState createState() => _SideBarMenuItemState();
}

class _SideBarMenuItemState extends State<SideBarMenuItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: widget.icon,
          title: widget.text,
          onTap: widget.onPressed,
        ),
      ],
    );
  }
}
