import 'package:flutter/material.dart';
import 'package:upside_component_lib_example/component/app_bar_with_drawer_screen.dart';
import 'package:upside_component_lib_example/component/app_bar_with_search_screen.dart';
import 'package:upside_component_lib_example/component/dial_picker_screen.dart';
import 'package:upside_component_lib_example/component/form_field_screen.dart';
import 'package:upside_component_lib_example/component/buttons_screen.dart';
import 'package:upside_component_lib_example/component/modal_date_picker_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const LandingScreen(),
    );
  }
}

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Upside Component Lib Plugin example app'),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => FormFieldScreen()),
                );
              },
              child: Text("Form Fields"),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ButtonsScreen()),
                );
              },
              child: Text("Buttons"),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => AppBarWithDrawerScreen(),
                  ),
                );
              },
              child: Text("App Bar with Drawer"),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => AppBarWithSearchScreen(),
                  ),
                );
              },
              child: Text("App Bar with search"),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ModalDatePickerScreen(),
                  ),
                );
              },
              child: Text("Modal Date Picker"),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => DialPickerScreen()),
                );
              },
              child: Text("Dial Picker"),
            ),
          ],
        ),
      ),
    );
  }
}
