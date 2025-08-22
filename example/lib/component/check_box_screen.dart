import 'package:flutter/material.dart';
import 'package:upside_component_lib/ui/component/button/check_box.dart';

class CheckBoxScreen extends StatelessWidget {
  const CheckBoxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            CheckBox()
          ],
        ),
      ),
    );
  }
}
