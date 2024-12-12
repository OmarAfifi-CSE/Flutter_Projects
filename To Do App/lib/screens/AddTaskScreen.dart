import 'dart:io';
import 'package:flutter/material.dart';


class AddTaskScreen extends StatelessWidget {
  final _titleController = TextEditingController();
  final _dateController = TextEditingController();
  final _timeController = TextEditingController();
  final _notesController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Task'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              'Cancel',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
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
                  decoration: const InputDecoration(
                    hintText: 'Enter Task Title',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // Date Section
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
                  decoration: const InputDecoration(
                    hintText: 'Enter Date',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                  ),
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
                  decoration: const InputDecoration(
                    hintText: 'Enter Time',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                  ),
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
                  decoration: const InputDecoration(
                    hintText: 'Enter Notes',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                  ),
                ),
              ),
              const SizedBox(height: 16),

              ElevatedButton(
                onPressed: () {
                  final task = {
                    'title': _titleController.text,
                    'date': _dateController.text,
                    'time': _timeController.text,
                    'notes': _notesController.text,
                    'done': 'false',
                  };
                  Navigator.pop(context, task);
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  textStyle: const TextStyle(fontSize: 18),
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text('Add Task'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}