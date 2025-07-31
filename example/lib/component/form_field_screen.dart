import 'package:flutter/material.dart';
import 'package:upside_component_lib/ui/component/form/upside_text_input_field.dart';

class FormFieldScreen extends StatelessWidget {
  const FormFieldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SizedBox(
          width: 400,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: UpsideTextInputField(
                  label: "Name",
                  text: "Pasan",
                  onChanged: (val) => "",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
