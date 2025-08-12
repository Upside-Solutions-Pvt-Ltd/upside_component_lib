import 'package:flutter/material.dart';
import 'package:upside_component_lib/ui/component/header/custom_header.dart';

class CustomHeaderScreen extends StatelessWidget {
  const CustomHeaderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Custom Header Example')),
      body: Column(
        children: [
          Header.customHeader(
            context: context,
            headerText: 'Header',
            subHeaderText: 'sub heading',
            icon: Icons.calendar_month,
          ),
        ],
      ),
    );
  }
}
