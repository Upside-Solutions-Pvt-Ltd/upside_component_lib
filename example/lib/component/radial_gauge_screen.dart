import 'package:flutter/material.dart';
import 'package:upside_component_lib/ui/component/gauges/radial_gauge.dart';

class RadialGaugeScreen extends StatelessWidget {
  const RadialGaugeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: const RadialGauge()),
    );
  }
}
