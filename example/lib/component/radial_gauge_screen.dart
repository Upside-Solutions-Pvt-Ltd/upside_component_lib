import 'package:flutter/material.dart';
import 'package:upside_component_lib/ui/component/gauges/radial_gauge.dart';

class RadialGaugeScreen extends StatelessWidget {
  const RadialGaugeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<double> temperatureValues = [15, 40, 75, 90];
    return Scaffold(
      appBar: AppBar(),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.8,
          mainAxisSpacing: 20,
          crossAxisSpacing: 50,
        ),
        itemBuilder: (context, index) {
          return RadialGauge(
            firstPhaseStartValue: 0,
            secondPhaseStartValue: 30,
            thirdPhaseStartValue: 70,
            thirdPhaseEndValue: 100,
            value: temperatureValues[index],
          );
        },
        itemCount: temperatureValues.length,
      ),
      /* Center(
        child: const RadialGauge(
          value: -30,
          firstPhaseStartValue: -50,
          secondPhaseStartValue: -20,
          thirdPhaseStartValue: -10,
          thirdPhaseEndValue: 20,

        ),
      ),
      */
    );
  }
}
