import 'package:flutter/material.dart';
import 'package:upside_component_lib/ui/component/gauges/radial_gauge.dart';

class RadialGaugeScreen extends StatelessWidget {
  const RadialGaugeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String, double> temperatureValues = {
      "Temperature 1": 15,
      "Temperature 2": 40,
      "Temperature 3": 75,
      "Temperature 4": 90,
      "Temperature 5": 34,
      "Temperature 6": 67,
    };
    return Scaffold(
      appBar: AppBar(),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 380,
          childAspectRatio: 0.8,
          mainAxisSpacing: 20,
          crossAxisSpacing: 50,
        ),
        itemBuilder: (context, index) {
          return RadialGauge(
            title: temperatureValues.keys.elementAt(index),
            firstPhaseStartValue: 0,
            secondPhaseStartValue: 30,
            thirdPhaseStartValue: 70,
            thirdPhaseEndValue: 100,
            value: temperatureValues.values.elementAt(index),
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
