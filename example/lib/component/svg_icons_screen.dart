import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SvgIconsScreen extends StatelessWidget {
  const SvgIconsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            SvgPicture.asset(
              width: 64,
              'assets/icons/facebook.svg',
              package: 'upside_component_lib',
            ),
          ],
        ),
      ),
    );
  }
}
