import 'dart:io';
import 'package:flutter/material.dart';


class AddTaskScreen extends StatelessWidget {
  final _titleController = TextEditingController();
  final _dateController = TextEditingController();
  final _timeController = TextEditingController();
  final _notesController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Task'),
        backgroundColor: Colors.white,
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              'Cancel',
              style: TextStyle(color: Colors.blue),
            ),
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Title',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF2196F3)),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.black),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 2,
                          blurRadius: 4,
                        ),
                      ],
                    ),
                    child: TextFormField(
                      controller: _titleController,
                      decoration: InputDecoration(
                        hintText: 'Enter Task Title',
                        contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(width: 1.0, color: Colors.grey),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(width: 2.0, color: Colors.blue),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Title is required';
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(height: 16),

                  const Text(
                    'Date',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF2196F3)),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.black),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 2,
                          blurRadius: 4,
                        ),
                      ],
                    ),
                    child: TextFormField(
                      controller: _dateController,
                      decoration: InputDecoration(
                        hintText: 'Enter Date',
                        contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(width: 1.0, color: Colors.grey),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(width: 2.0, color: Colors.blue),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Date is required';
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(height: 16),

                  const Text(
                    'Time',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF2196F3)),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.black),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 2,
                          blurRadius: 4,
                        ),
                      ],
                    ),
                    child: TextFormField(
                      controller: _timeController,
                      decoration: InputDecoration(
                        hintText: 'Enter Time',
                        contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(width: 1.0, color: Colors.grey),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(width: 2.0, color: Colors.blue),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Time is required';
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(height: 16),

                  const Text(
                    'Notes',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF2196F3)),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.black),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 2,
                          blurRadius: 4,
                        ),
                      ],
                    ),
                    child: TextFormField(
                      controller: _notesController,
                      maxLines: 4,
                      decoration: InputDecoration(
                        hintText: 'Enter Notes',
                        contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(width: 1.0, color: Colors.grey),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(width: 2.0, color: Colors.blue),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),

                  FloatingActionButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        final task = {
                          'title': _titleController.text,
                          'date': _dateController.text,
                          'time': _timeController.text,
                          'notes': _notesController.text,
                          'done': 'false',
                        };
                        Navigator.pop(context, task);
                      }
                    },
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(Icons.check, size: 28),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
