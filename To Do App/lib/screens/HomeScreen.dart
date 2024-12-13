import 'dart:io';
import 'package:flutter/material.dart';

import 'AddTaskScreen.dart';
import 'TaskDetailsScreen.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, String>> _tasks = [];
  final TextEditingController _searchController = TextEditingController();
  String _searchError = '';

  void _addTask(Map<String, String> task) {
    setState(() {
      _tasks.add(task);
    });
  }

  void _updateTask(int index, Map<String, String> task) {
    setState(() {
      _tasks[index] = task;
    });
  }

  void _searchTask() {
    String searchQuery = _searchController.text.toLowerCase().trim();
    bool taskFound = false;

    for (var task in _tasks) {
      if (task['title']?.toLowerCase().contains(searchQuery) ?? false) {
        taskFound = true;
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => TaskDetailsScreen(task: task),
          ),
        );
        break;
      }
    }

    if (!taskFound) {
      setState(() {
        _searchError = 'The task you are searching for is not found.';
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: _searchController,
                decoration: InputDecoration(
                  hintText: 'Search for Tasks, Events',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: _searchTask,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              if (_searchError.isNotEmpty)
                Text(
                  _searchError,
                  style: const TextStyle(
                    color: Colors.red,
                    fontSize: 14,
                  ),
                ),
              const SizedBox(height: 16),
              const Text(
                "Today's Tasks",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              Expanded(
                child: ListView.builder(
                  itemCount: _tasks.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 12.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 6,
                              spreadRadius: 2,
                            ),
                          ],
                        ),
                        child: ListTile(
                          leading: Checkbox(
                            value: _tasks[index]['done'] == 'true',
                            onChanged: (bool? value) {
                              setState(() {
                                _tasks[index]['done'] = value! ? 'true' : 'false';
                              });
                            },
                          ),
                          title: Text(
                            _tasks[index]['title'] ?? '',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          trailing: Text(
                            _tasks[index]['time'] ?? '',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onTap: () async {
                            final updatedTask = await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => TaskDetailsScreen(task: _tasks[index]),
                              ),
                            );
                            if (updatedTask != null) {
                              _updateTask(index, updatedTask);
                            }
                          },
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final task = await Navigator.push<Map<String, String>>(
            context,
            MaterialPageRoute(
              builder: (context) => AddTaskScreen(),
            ),
          );

          if (task != null) {
            _addTask(task);
          }
        },
        backgroundColor: const Color(0xFF2196F3),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}


class CalendarScreen extends StatelessWidget {
  const CalendarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Calendar Page'));
  }
}

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Settings Page'));
  }
}

