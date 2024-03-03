import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

import 'w_os_switch.dart';

class SwitchMenu extends StatelessWidget {
  final String title;
  final bool isOn;
  final ValueChanged<bool> onChanged;

  const SwitchMenu(this.title, this.isOn, {super.key, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        title.text.bold.make(),
        emptyExpanded,
        OnSwitch(value: isOn, onChanged: onChanged,),

      ],
    ).p20();
  }
}
