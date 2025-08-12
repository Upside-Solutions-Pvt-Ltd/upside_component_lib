import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:upside_component_lib/ui/component/app_bar/app_bar_with_drawer.dart';

class AppBarWithDrawerScreen extends StatelessWidget {
  const AppBarWithDrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWithDrawer(label: "App Bar", trailIcon: Icon(Icons.search)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('content'),
            ),
          ],
        ),
      ),
    );
  }
}
