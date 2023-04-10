import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';
import '../models/task.dart';

class AddTaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    String? newTaskTitle;

    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText){
                newTaskTitle = newText;
              },
            ),
            SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {
                //Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle!);
                Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle ?? "");
                Navigator.pop(context);
              },
              style: TextButton.styleFrom(
                  padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                  backgroundColor: Colors.lightBlueAccent),
              child: Text(
                'Add',
                style: TextStyle(
                  color: Colors.white
                ),
              ),
            )
            //TextButton(onPressed: onPressed, child: child)
          ],
        ),
      ),
    );
  }
}
