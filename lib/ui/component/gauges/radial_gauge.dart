import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class RadialGauge extends StatefulWidget {
  final double firstPhaseStartValue;
  final double secondPhaseStartValue;
  final double thirdPhaseStartValue;
  final double thirdPhaseEndValue;

  const RadialGauge({
    super.key,
    required this.firstPhaseStartValue,
    required this.secondPhaseStartValue,
    required this.thirdPhaseStartValue,
    required this.thirdPhaseEndValue,
  });

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
          minimum: widget.firstPhaseStartValue,
          maximum: widget.thirdPhaseEndValue,
          labelOffset: -30,
          ranges: [
            GaugeRange(
              startValue: widget.firstPhaseStartValue,
              endValue: widget.secondPhaseStartValue,
              color: Colors.green,
              startWidth: 35,
              endWidth: 35,
            ),
            GaugeRange(
              startValue: widget.secondPhaseStartValue,
              endValue: widget.thirdPhaseStartValue,
              color: Colors.orange,
              startWidth: 35,
              endWidth: 35,
            ),
            GaugeRange(
              startValue: widget.thirdPhaseStartValue,
              endValue: widget.thirdPhaseEndValue,
              color: Colors.red,
              startWidth: 35,
              endWidth: 35,
            ),
          ],
          pointers: [
            NeedlePointer(
              value: 75,
              needleLength: 0.88,
              needleColor: Colors.black,
            ),
          ],
          annotations: [GaugeAnnotation(widget: Container(child: Text('75°')))],
        ),
      ],
    );
  }
}
