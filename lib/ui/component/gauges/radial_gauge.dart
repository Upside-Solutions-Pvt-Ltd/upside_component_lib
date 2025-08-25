import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class RadialGauge extends StatefulWidget {
  final double firstPhaseStartValue;
  final double secondPhaseStartValue;
  final double thirdPhaseStartValue;
  final double thirdPhaseEndValue;
  final double value;

  const RadialGauge({
    super.key,
    required this.value,
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
    return LayoutBuilder(
      builder: (context, constraints) {
        return SfRadialGauge(
          title: GaugeTitle(text: 'Temperature'),
          axes: [
            RadialAxis(
              minimum: widget.firstPhaseStartValue,
              maximum: widget.thirdPhaseEndValue,
              labelOffset: -30,
              showLastLabel: true,
              interval: 10,

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
                  value: widget.value,
                  needleStartWidth: constraints.maxWidth >= 300 ? 0.9 : 0.5,
                  needleEndWidth: constraints.maxWidth >= 300 ? 8 : 5,
                  needleLength: constraints.maxWidth >= 300 ? 0.88 : 0.7,
                  needleColor: Colors.black,
                  enableAnimation: true,
                  animationDuration: 1000,
                  animationType: AnimationType.ease,
                ),
              ],

              annotations: [
                GaugeAnnotation(
                  widget: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(5),
                    ),

                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '${widget.value}°C',
                        style: TextStyle(
                          fontSize: constraints.maxWidth >= 300 ? 16 : 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  angle: 90,
                  positionFactor: 0.5,
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
