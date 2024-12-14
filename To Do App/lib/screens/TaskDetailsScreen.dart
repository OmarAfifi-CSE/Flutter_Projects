import 'dart:io';
import 'package:flutter/material.dart';

import '../componants/my_textfield.dart';


class TaskDetailsScreen extends StatefulWidget {
  final Map<String, String> task;

  const TaskDetailsScreen({super.key, required this.task});

  @override
  _TaskDetailsScreenState createState() => _TaskDetailsScreenState();
}

class _TaskDetailsScreenState extends State<TaskDetailsScreen> {
  late TextEditingController _titleController;
  late TextEditingController _notesController;
  String? dateValue;
  String? timeValue;

  Future<void> _selectedDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (pickedDate != null) {
      setState(() {
        dateValue = pickedDate.toLocal().toString().split(' ')[0];
      });
    }
  }

  Future<void> _selectedTime(BuildContext context) async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (pickedTime != null) {
      setState(() {
        timeValue = pickedTime.format(context);
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController(text: widget.task['title']);
    _notesController = TextEditingController(text: widget.task['notes']);
    dateValue = widget.task['date'];
    timeValue = widget.task['time'];
  }

  @override
  void dispose() {
    _titleController.dispose();
    _notesController.dispose();
    super.dispose();
  }

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
                      'Edit Task',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF2196F3),
                      ),
                    ),
                    MaterialButton(
                      child: const Text(
                        'Cancel',
                        style: TextStyle(fontSize: 15, color: Colors.red),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    )
                  ],
                ),
                const SizedBox(height: 8),
                MyTextfield(
                  hintText: "Task Name",
                  obscureText: false,
                  backgroundColor: Colors.blue[50],
                  borderSideColor: Colors.white,
                  controller: _titleController,
                ),
                const SizedBox(height: 16),
                const Text(
                  'Date',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2196F3),
                  ),
                ),
                const SizedBox(height: 8),
                MaterialButton(
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * .4,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.calendar_month_outlined,
                          color: Colors.orange,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          dateValue ?? "Set Date",
                          style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                  onPressed: () {
                    _selectedDate(context);
                  },
                ),
                const SizedBox(height: 8),
                MaterialButton(
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * .4,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.access_time,
                          color: Colors.red,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          timeValue ?? "Set Time",
                          style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                  onPressed: () {
                    _selectedTime(context);
                  },
                ),
                const SizedBox(height: 8),
                const Text(
                  'Notes',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2196F3),
                  ),
                ),
                const SizedBox(height: 8),
                MyTextfield(
                  hintText: "Task Notes",
                  obscureText: false,
                  maxLines: 6,
                  borderSideColor: Colors.white,
                  backgroundColor: Colors.blue[50],
                  controller: _notesController,
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final task = {
            'title': _titleController.text,
            'time': timeValue ?? "00:00",
            'date': dateValue ?? "",
            'notes': _notesController.text,
          };
          Navigator.pop(context, task);
        },
        backgroundColor: Colors.blue,
        shape: const CircleBorder(),
        child: const Icon(
          Icons.check,
          size: 28,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}

