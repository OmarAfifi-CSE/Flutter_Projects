import 'package:flutter/material.dart';
import 'package:to_do_app/componants/my_textfield.dart';


class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({super.key});


  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  final _taskNameKey = GlobalKey<FormState>();

  String? dateValue;
  String? timeValue;
  String? taskName;
  String? taskNotes;

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
                  formKey: _taskNameKey,
                  valMessage: "Please Enter Task Name",
                  hintText: "Task Name",
                  obscureText: false,
                  backgroundColor: Colors.blue[50],
                  borderSideColor: Colors.white,
                  onChanged: (val) {
                    setState(() {
                      taskName = val;
                    });
                  },
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
                  onChanged: (val) {
                    setState(() {
                      taskNotes = val;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_taskNameKey.currentState!.validate()) {
            final task = {
              'title': taskName!,
              'time': timeValue ?? "00:00",
              'date': dateValue ?? "",
              'notes': taskNotes ?? "",
            };
            Navigator.pop(context, task);
          }
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


