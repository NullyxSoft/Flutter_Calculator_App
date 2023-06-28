// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:calculator_app/core/ui/shared/ui_helpers.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const CustomAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      iconTheme: IconThemeData(color: UIHelper.isDark ? Colors.white : Colors.black),
      backgroundColor: Colors.transparent,
      centerTitle: true,
      title: Text(title, style: TextStyle(color: UIHelper.isDark ? Colors.white : Colors.black)),
      leading: IconButton(
        icon: const Icon(Icons.keyboard_backspace),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}
