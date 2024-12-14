
import 'package:flutter/material.dart';
import '../componants/my_task_tile.dart';
import 'AddTaskScreen.dart';
import 'TaskDetailsScreen.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, String>> _tasks = [];
  final String _searchError = '';
  String? searchValue;


  List<Map<String, String>> get filteredTasks {
    if (searchValue == null || searchValue!.isEmpty) {
      return _tasks;
    } else {
      return _tasks.where((task) {
        return task['title']?.toLowerCase().contains(searchValue!.toLowerCase()) ?? false;
      }).toList();
    }
  }

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
              const SizedBox(height: 30),
              SearchBar(
                leading: const Icon(Icons.search_rounded, size: 30),
                hintText: "Search for Tasks, Events",
                backgroundColor: WidgetStateProperty.all(Colors.blue[50]),
                elevation: WidgetStateProperty.all(0),
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onChanged: (val) {
                  setState(() {
                    searchValue = val;
                  });
                },
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
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: filteredTasks.length,
                  itemBuilder: (context, index) {
                    final task = filteredTasks[index];
                    return GestureDetector(
                      onTap: () async {
                        final updatedTask = await Navigator.push<Map<String, String>>(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TaskDetailsScreen(task: task),
                          ),
                        );
                        if (updatedTask != null) {
                          _updateTask(index, updatedTask); // Update the task after editing
                        }
                      },
                      child: MyTaskTile(
                        task: task['title'] ?? '',
                        time: task['time'] ?? '',
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
        shape: const CircleBorder(),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }

}



