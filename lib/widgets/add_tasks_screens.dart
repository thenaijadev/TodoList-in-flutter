import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({Key? key, this.newItem, this.addNewItem})
      : super(key: key);

  final void Function(String)? newItem;
  final void Function()? addNewItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff757575),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.lightBlueAccent, fontSize: 25.0),
              ),
              TextField(
                maxLength: 40,
                minLines: 1,
                textAlign: TextAlign.center,
                onChanged: newItem,
              ),
              const SizedBox(
                height: 25.0,
              ),
              ElevatedButton(
                onPressed: addNewItem,
                style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith(
                        (states) => Colors.lightBlueAccent)),
                child: Container(
                  color: Colors.lightBlueAccent,
                  width: 200.0,
                  height: 50.0,
                  child: const Center(
                    child: Text(
                      'Add',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
