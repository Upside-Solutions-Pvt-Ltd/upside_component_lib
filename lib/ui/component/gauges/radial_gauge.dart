import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class RadialGauge extends StatefulWidget {
  const RadialGauge({super.key});

  @override
  State<RadialGauge> createState() => _RadialGaugeState();
}

class _RadialGaugeState extends State<RadialGauge> {
  @override
  Widget build(BuildContext context) {
    return SfRadialGauge(
      title: GaugeTitle(text: 'Temperature'),
      axes: [
        RadialAxis(
          minimum: 0,
          maximum: 100,
          ranges: [
            GaugeRange(startValue: 0, endValue: 30, color: Colors.green),
            GaugeRange(startValue: 30, endValue: 70, color: Colors.orange),
            GaugeRange(startValue: 70, endValue: 100, color: Colors.red),
          ],
          pointers: [
            NeedlePointer(
              value: 75,
              needleLength: 0.8,
              needleColor: Colors.black,
            ),
          ],
        ),
      ],
    );
  }
}
