import 'package:flutter/material.dart';
import 'package:to_do_app/componants/my_textfield.dart';

import 'HomeScreen.dart';


class AddTaskScreen extends StatelessWidget {

  final _taskNameKey = GlobalKey<FormState>();

  AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Add task',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Color(0xFF2196F3)),
                      ),
                      MaterialButton(
                        child: const Text(
                          'Cancel',
                          style: TextStyle(fontSize: 15, color: Colors.red),
                        ),
                        onPressed: (){
                          Navigator.of(context).pop();
                        },
                      )
                    ],
                  ),
                  const SizedBox(height: 8),
                  MyTextfield(
                    formKey: _taskNameKey,
                    valMessage: "Please Enter Task Name",
                    hintText: "task Name",
                    obscureText: false,
                    backgroundColor: Colors.blue[50],
                    borderSideColor: Colors.white,
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Date',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF2196F3)),
                  ),
                  const SizedBox(height: 8),
                  MaterialButton(
                    child: Container(
                        width: MediaQuery.sizeOf(context).width*.4,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.calendar_month_outlined,color: Colors.orange,),
                            SizedBox(width: 5,),
                            Text("Set due date", style: TextStyle(fontWeight: FontWeight.w400,color: Colors.black54)),
                          ],
                        )
                    ),
                    onPressed: (){},
                  ),
                  const SizedBox(height: 8),
                  MaterialButton(
                    child: Container(
                        width: MediaQuery.sizeOf(context).width*.4,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.access_time,color: Colors.red,),
                            SizedBox(width: 5,),
                            Text("Set Time",style: TextStyle(fontWeight: FontWeight.w400,color: Colors.black54),),
                          ],
                        )
                    ),
                    onPressed: (){},
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Notes',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF2196F3)),
                  ),
                  const SizedBox(height: 8),
                  MyTextfield(
                      hintText: "Task Notes",
                      obscureText: false,
                    maxLines: 6,
                    borderSideColor: Colors.white,
                    backgroundColor: Colors.blue[50],
                  ),
                ],
              ),
            ),
          ),
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if(_taskNameKey.currentState!.validate()){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (e) => const CalendarScreen(),
              ),
            );
          }
        },
        backgroundColor: Colors.blue,
        shape: const CircleBorder(),
        child: const Icon(Icons.check, size: 28,color: Colors.white,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
