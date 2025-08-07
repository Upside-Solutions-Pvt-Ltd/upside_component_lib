import 'package:flutter/material.dart';
import 'package:upside_component_lib/ui/component/button/radio_button.dart';

class RadioButtonScreen extends StatefulWidget {
  const RadioButtonScreen({super.key});

  @override
  State<RadioButtonScreen> createState() => _RadioButtonScreenState();
}

class _RadioButtonScreenState extends State<RadioButtonScreen> {
  String? selectedValue = 'option1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Center(
            child: ListTile(
              leading: RadioButton<String>(
                value: 'option1',
                groupValue: selectedValue,
                onChanged: (value) {},
              ),
              title: const Text('Option 1'),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
