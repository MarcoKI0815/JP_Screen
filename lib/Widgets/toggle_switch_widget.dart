import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class ToggleswitchWidget extends StatelessWidget {
  const ToggleswitchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 155,
      left: 21,
      child: ToggleSwitch(
        initialLabelIndex: 2,
        totalSwitches: 3,
        labels: const ["Small", "Medium", "Large"],
        onToggle: (index) {},
        activeBgColor: const [
          Color.fromARGB(255, 113, 113, 113),
        ],
        inactiveBgColor: const Color.fromARGB(255, 80, 80, 80),
        activeFgColor: Colors.white,
        fontSize: 11.3,
        dividerMargin: 9,
        radiusStyle: true,
        minHeight: 30,
        customWidths: const [
          55,
          65,
          55,
        ],
      ),
    );
  }
}