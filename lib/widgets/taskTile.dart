// ignore: file_names
// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool? isChecked;
  final String? taskTitle;
  final void Function(bool?)? checkboxCallBack;
  final void Function()? longPressCallBack;
  const TaskTile(
      {this.isChecked,
      this.taskTitle,
      this.checkboxCallBack,
      this.longPressCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onLongPress: longPressCallBack,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 10.0, horizontal: 40.0),
        leading: Text(
          taskTitle!,
          style: TextStyle(
              decoration: isChecked! ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
          shape: const CircleBorder(),
          value: isChecked,
          activeColor: Colors.lightBlueAccent,
          onChanged: checkboxCallBack,
        ));
  }
}
