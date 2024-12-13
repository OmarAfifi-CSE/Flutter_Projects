import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';
import 'package:to_do_app/componants/my_card.dart';
import 'package:to_do_app/screens/AddTaskScreen.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  DateTime? _focusedDay;
  String? formattedDate1;
  String? formattedDate2;
  DateTime? _selectedDay;
  CalendarFormat _calendarFormat = CalendarFormat.month;

  @override
  void initState() {
    super.initState();
    _focusedDay = DateTime.now();
    _updateFormattedDate(_focusedDay!);
  }

  void _updateFormattedDate(DateTime day) {
    formattedDate1 = DateFormat('d MMM, yyyy').format(day);
    formattedDate2 = DateFormat('dd/MM/yyyy').format(day);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            'Calendar',
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.w600,
            fontSize: 20
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Card(
            elevation: 8,
            margin: const EdgeInsets.all(10),
            child: TableCalendar(
              firstDay: DateTime(2000),
              lastDay: DateTime(2100),
              focusedDay: _focusedDay!,
              selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  _selectedDay = selectedDay;
                  _focusedDay = focusedDay;
                  _updateFormattedDate(focusedDay);
                });
              },
              calendarStyle: const CalendarStyle(
                todayDecoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
                selectedDecoration: BoxDecoration(
                  color: Colors.lightBlue,
                  shape: BoxShape.circle,
                ),
              ),
              headerStyle: const HeaderStyle(formatButtonVisible: false),
              calendarFormat: _calendarFormat,
              onFormatChanged: (format) {
                setState(() {
                  _calendarFormat = format;
                });
              },
              onPageChanged: (focusedDay) {
                setState(() {
                  _focusedDay = focusedDay;
                });
              },
              calendarBuilders: CalendarBuilders(
                dowBuilder: (context, day) {
                  return Center(
                    child: Text(
                      DateFormat('EEE').format(day).toUpperCase(),
                      style: const TextStyle(color: Colors.black),
                    ),
                  );
                },
                headerTitleBuilder: (context, day) {
                  return Center(
                    child: Text(
                      formattedDate1 ?? '',
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.black45,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          const SizedBox(height: 15,),
          Expanded(
            child: ListView.separated(
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  color: Colors.blue[50],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        title: Text("$formattedDate2"),
                        subtitle: const Text("9:45"),
                        trailing: const Text("Delete",style: TextStyle(color: Colors.red),),
                      ),
                      const Text("   Finish Report"),
                    ],
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(height: 20,);
              },
              itemCount: 3,
            ),
          )

        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        shape: const CircleBorder(),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (e) => AddTaskScreen(),
            ),
          );
        },
        child: const Icon(Icons.add,color: Colors.white,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
