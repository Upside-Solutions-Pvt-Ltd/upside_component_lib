import 'package:flutter/material.dart';

class AppBarWithSearch extends StatelessWidget implements PreferredSizeWidget {
  final String label;
  final Function()? onPressed;
  const AppBarWithSearch({super.key, required this.label, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(label),
      leading: GestureDetector(
        child: Icon(Icons.arrow_back),
        onTap: () {
          Navigator.of(context).pop();
        },
      ),
      actions: [IconButton(icon: Icon(Icons.search), onPressed: () { onPressed?.call(); })],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
