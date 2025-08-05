import 'package:flutter/material.dart';

class AppBarWithDrawer extends StatelessWidget implements PreferredSizeWidget {
  final String label;
  final Function()? onPressed;
  final Icon trailIcon;
  const AppBarWithDrawer({super.key, required this.label, this.onPressed, required this.trailIcon});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Center(child: Text(label)),
      leading: GestureDetector(
        child: Icon(Icons.menu),
        onTap: () {
          Drawer();
        },
      ),
      actions: [IconButton(icon: trailIcon, onPressed: () { onPressed?.call(); })],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
