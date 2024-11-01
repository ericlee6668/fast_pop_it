import 'package:flutter/material.dart';
class SwitchNotice extends StatefulWidget {
  const SwitchNotice({super.key});

  @override
  State<SwitchNotice> createState() => _SwitchNoticeState();
}

class _SwitchNoticeState extends State<SwitchNotice> {
  bool isChecked = false;
  bool isChecked2 = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/navi.png'),
          CheckboxListTile( title: const Text("landscape(recommend)"),value: isChecked, onChanged: (value){
            setState(() {
              isChecked = value ?? false;
            });
          }),
          CheckboxListTile( title: const Text("portrait"),value: isChecked2, onChanged: (value){
            setState(() {
              isChecked2 = value ?? false;
            });
          })
        ],
      ),
    );
  }
}

