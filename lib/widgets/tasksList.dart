// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/widgets/taskTile.dart';
import 'package:state_management/models/task_data.dart';

class TasksList extends StatelessWidget {
  const TasksList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (BuildContext context, index) {
            return TaskTile(
              taskTitle: taskData.task[index].name,
              isChecked: taskData.task[index].isDone,
              longPressCallBack: () {
                taskData.deleteTask(taskData.task[index]);
              },
              checkboxCallBack: (bool? checkboxState) {
                taskData.updateTask(taskData.task[index]);
              },
            );
          },
          itemCount: taskData.task.length,
        );
      },
    );
  }
}
