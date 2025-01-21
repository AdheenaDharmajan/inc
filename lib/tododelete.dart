import 'package:flutter/material.dart';

class Task {
  final String description;
  final DateTime dateTime;

  Task(this.description, this.dateTime);
}

class TodoApp extends StatefulWidget {
  const TodoApp({super.key});

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  final List<Task> _tasks = [];
  final TextEditingController _taskController = TextEditingController();

  void _addTask() {
    final taskDescription = _taskController.text.trim();
    if (taskDescription.isNotEmpty) {
      setState(() {
        final task = Task(taskDescription, DateTime.now());
        _tasks.add(task);
      });
      _taskController.clear();
    }
  }

  void _removeTask(int index) {
    setState(() {
      _tasks.removeAt(index);
    });
  }

  void _updateTask(int index, String newDescription) {
    setState(() {
      _tasks[index] = Task(newDescription, DateTime.now());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: AppBar(
          backgroundColor: Color.fromARGB(202, 68, 196, 255),
          title: Text(
            "TodoApp",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          centerTitle: true,
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://qph.cf2.quoracdn.net/main-qimg-566a8fc0fa9bbd43b3e3b04a176b4487-pjlq"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.blue.withOpacity(0.5), BlendMode.color),
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      child: TextField(
                        controller: _taskController,
                        decoration: InputDecoration(
                          labelText: 'Enter task',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: const Color.fromARGB(255, 33, 166, 243),
                                width: 2),
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  ElevatedButton(
                    onPressed: _addTask,
                    child: Text("Add"),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _tasks.length,
                itemBuilder: (context, index) {
                  final task = _tasks[index];
                  return ListTile(
                    title: Text(
                      task.description,
                      style: TextStyle(
                          color: const Color.fromARGB(255, 37, 33, 243)),
                    ),
                    subtitle: Text(
                      'Added on: ${task.dateTime.toLocal()}',
                      style: TextStyle(color: Colors.grey),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: Icon(Icons.edit, color: Colors.blue),
                          onPressed: () {
                            // Open dialog to edit task
                            _showEditDialog(index);
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.delete, color: Colors.red),
                          onPressed: () => _removeTask(index),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Show Edit Dialog to update task
  void _showEditDialog(int index) {
    final TextEditingController _editController =
        TextEditingController(text: _tasks[index].description);
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Edit Task'),
          content: TextField(
            controller: _editController,
            decoration: InputDecoration(labelText: 'New task description'),
          ),
          actions: [
            TextButton(
              onPressed: () {
                final newDescription = _editController.text.trim();
                if (newDescription.isNotEmpty) {
                  _updateTask(index, newDescription);
                }
                Navigator.of(context).pop();
              },
              child: Text('Update'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
          ],
        );
      },
    );
  }
}

// import 'package:flutter/material.dart';

// class Timedate  extends StatefulWidget {
//   const Timedate ({super.key});

//   @override
//   State<Timedate> createState() => _TimedateState();
// }

// class _TimedateState extends State<Timedate> {
//   final List<String> _times =[];
//   final TextEditingController _timeController = TextEditingController();

//   void _addtime(){
//      final time = _timeController.text.trim();
//     if (time.isNotEmpty) {
//       setState(() {
//         _times.add(time);
//       });
//       _timeController.clear();
//     }
//   }

//    void _removeTime(int index) {
//     setState(() {
//       _times.removeAt(index);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blue,
//         title: Text("Select"),centerTitle: true,),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'dart:async';

// class Timedate extends StatefulWidget {
//   const Timedate({super.key});

//   @override
//   _TimedateState createState() => _TimedateState();
// }

// class _TimedateState extends State<Timedate> {
//   late String currentTime;
//   late DateTime selectedDate;

//   @override
//   void initState() {
//     super.initState();
//     currentTime = _getCurrentTime();
//     selectedDate = DateTime.now();
//     Timer.periodic(const Duration(seconds: 1), _updateTime);
//   }

//   // Function to update the current time
//   void _updateTime(Timer timer) {
//     setState(() {
//       currentTime = _getCurrentTime();
//     });
//   }

//   // Function to get current time
//   String _getCurrentTime() {
//     final now = DateTime.now();
//     return "${now.hour}:${now.minute}:${now.second}";
//   }

//   // Function to handle date selection
//   void _onDateSelected(DateTime date) {
//     setState(() {
//       selectedDate = date;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blue,
//         title: const Text("Select"),
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
           

//             Text(
//               'Selected Date: ${selectedDate.toLocal()}'.split(' ')[0],
//               style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
//             ),
//             const SizedBox(height: 10),
//             CalendarDatePicker(
//               initialDate: selectedDate,
//               firstDate: DateTime(2000),
//               lastDate: DateTime(2101),
//               onDateChanged: _onDateSelected,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }