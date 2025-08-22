import 'package:flutter/material.dart';

import 'package:upside_component_lib/ui/component/app_bar/app_bar_with_search.dart';

class AppBarWithSearchScreen extends StatelessWidget {
  const AppBarWithSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWithSearch(label: "App Bar"),
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
