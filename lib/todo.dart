// import 'package:flutter/material.dart';
// import 'package:inc/timedate.dart';



// class TodoApp extends StatefulWidget {
//   const TodoApp ({super.key});

//   @override
//   State<TodoApp> createState() => _TodoAppState();
// }

// class _TodoAppState extends State<TodoApp> {
//   final List<String> _tasks = [];

//   final TextEditingController _taskController = TextEditingController();


//   void _addTask(){
//     final task = _taskController.text.trim();
//     if (task.isNotEmpty) {
//       setState(() {
//         _tasks.add(task);
//       });
//       _taskController.clear();
//     }
//   }
//    void _removeTask(int index) {
//     setState(() {
//       _tasks.removeAt(index);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: PreferredSize(preferredSize: Size.fromHeight(40), child: 
//        AppBar(
//         backgroundColor: Color.fromARGB(202, 68, 196, 255),
//         title: Text("TodoApp",style: TextStyle(fontSize: 20,color: Colors.white, ),),
//         centerTitle: true,
//       ),),
//       body: Container(
//         height: MediaQuery.of(context).size.height,
//         width: MediaQuery.of(context).size.width,
//         decoration: BoxDecoration(image: DecorationImage(
//           image: NetworkImage("https://qph.cf2.quoracdn.net/main-qimg-566a8fc0fa9bbd43b3e3b04a176b4487-pjlq"),fit: BoxFit.cover,colorFilter: ColorFilter.mode(Colors.blue.withOpacity(0.5), BlendMode.color)),),
      
//         child: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Row(
//               children: [
//                 Expanded(
//                   child: Container(
//                     height: 50,
//                     child: TextField(
//                       style: TextStyle(color: Color.fromARGB(255, 24, 47, 179),letterSpacing: 5),
//                       controller: _taskController,
//                       decoration: InputDecoration(
//                         labelText: 'Enter task',
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(30)),
//                           focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: const Color.fromARGB(255, 33, 166, 243),width: 2),
//                            borderRadius: BorderRadius.circular(30)
//                           )
                       
                        
//                       ),
//                     ),
//                   ),
//                 ),
//                  SizedBox(
//             height: 100,
//             width: 50,
//           ),
//           ElevatedButton(
//             onPressed: _addTask, 
//             child: Text("Add"),
          
//             )
//               ]
        
//       ),
//           ),
//           Expanded(
//             child: ListView.builder(
//               itemCount: _tasks.length,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   title: Text(_tasks[index],style: TextStyle(color: const Color.fromARGB(255, 37, 33, 243)),),
//                   trailing: IconButton(
//                     icon: Icon(Icons.delete, color: Colors.red),
//                     onPressed: () => _removeTask(index),
//                   ),
//                 );
//               },
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(bottom: 300),
//             child: ElevatedButton(onPressed:   (){
//               Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Timedate()));
//             }, child: Text("Set Time")),
//           )
//         ]
//         ),
        
//       ),
      
    
//         );
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:inc/timedate.dart'; 

// class TodoApp extends StatefulWidget {
//   const TodoApp({super.key});

//   @override
//   State<TodoApp> createState() => _TodoAppState();
// }

// class _TodoAppState extends State<TodoApp> {
//   final List<String> _tasks = [];
//   final List<String> _times = []; 
//   final TextEditingController _taskController = TextEditingController();

//   void _addTask() {
//     final task = _taskController.text.trim();
//     if (task.isNotEmpty) {
//       setState(() {
//         _tasks.add(task);
//         _times.add(""); 
//       });
//       _taskController.clear();
//     }
//   }

//   void _removeTask(int index) {
//     setState(() {
//       _tasks.removeAt(index);
//       _times.removeAt(index);
//     });
//   }

//   Future<void> _selectTime() async {
//     final TimeOfDay? picked = await showTimePicker(
//       context: context,
//       initialTime: TimeOfDay.now(),
//     );
//     if (picked != null) {
//       setState(() {
//         _times.add(picked.format(context));
//       });
//     }
//   }

//   void _removeTime(int index) {
//     setState(() {
//       _times.removeAt(index);
//     });
//   }

//   Future<void> _setTime(int index) async {
//     final result = await Navigator.of(context).push<String>(
//       MaterialPageRoute(builder: (context) => const Timedate()),
//     );
//     if (result != null && result.isNotEmpty) {
//       setState(() {
//         _times[index] = result; 
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: PreferredSize(
//         preferredSize: const Size.fromHeight(40),
//         child: AppBar(
//           backgroundColor: const Color.fromARGB(202, 68, 196, 255),
//           title: const Text(
//             "TodoApp",
//             style: TextStyle(fontSize: 20, color: Colors.white),
//           ),
//           centerTitle: true,
//         ),
//       ),
//       body: Container(
//         height: MediaQuery.of(context).size.height,
//         width: MediaQuery.of(context).size.width,
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: const NetworkImage(
//                 "https://qph.cf2.quoracdn.net/main-qimg-566a8fc0fa9bbd43b3e3b04a176b4487-pjlq"),
//             fit: BoxFit.cover,
//             colorFilter: ColorFilter.mode(
//                 Colors.blue.withOpacity(0.5), BlendMode.color),
//           ),
//         ),
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Row(
//                 children: [
//                   Expanded(
//                     child: Container(
//                       height: 50,
//                       child: TextField(
//                         style: const TextStyle(
//                           color: Color.fromARGB(255, 24, 47, 179),
//                           letterSpacing: 5,
//                         ),
//                         controller: _taskController,
//                         decoration: InputDecoration(
//                           labelText: 'Enter task',
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(30),
//                           ),
//                           focusedBorder: OutlineInputBorder(
//                             borderSide: const BorderSide(
//                                 color: Color.fromARGB(255, 33, 166, 243),
//                                 width: 2),
//                             borderRadius: BorderRadius.circular(30),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   const SizedBox(width: 10),
//                    ElevatedButton(
//                    onPressed: _selectTime,
//                    child: const Text("Add Task & Time"),
//             ),
            
//                   // ElevatedButton(
//                   //   onPressed: _addTask,
//                   //   child: const Text("Add"),
//                   // ),
//                 ],
//               ),
//             ),
//             Expanded(
//               child: ListView.builder(
//                 itemCount: _tasks.length,
//                 itemBuilder: (context, index) {
//                   return ListTile(
//                     title: Text(
//                       _tasks[index],
//                       style: const TextStyle(
//                           color: Color.fromARGB(255, 37, 33, 243)),
//                     ),
//                     subtitle: Text(
//                       _times[index],
//                       style: const TextStyle(color: Colors.grey),
//                     ),
//                     trailing: Row(
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         IconButton(
//                           icon: const Icon(Icons.access_time),
//                           onPressed: () => _setTime(index),
//                         ),
//                          IconButton(onPressed: ()=> _removeTime(index), icon: Icon(Icons.delete)),
//                         IconButton(
//                           icon: const Icon(Icons.delete, color: Colors.red),
//                           onPressed: () => _removeTask(index),
//                         ),
//                       ],
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart'; 
import 'package:intl/intl.dart'; 

void main() {
  runApp(MaterialApp(
    home: TodoApp(),
  ));
}

class TodoApp extends StatefulWidget {
  const TodoApp({super.key});

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  final List<String> _tasks = [];
  final TextEditingController _taskController = TextEditingController();
  // String? _selectedTime;
  DateTime? _selectedDate;

 
  Future<void> _addTask() async {
    final task = _taskController.text.trim();
    if (task.isNotEmpty) {
     
      final time = await _selectTime();

     
      final date = await _selectDate(context);

      setState(() {
        if (date != null && time != null) {
          _tasks.add('$task on ${DateFormat('yyyy-MM-dd').format(date)} at $time');
        } else if (date != null) {
          _tasks.add('$task on ${DateFormat('yyyy-MM-dd').format(date)}');
        } else if (time != null) {
          _tasks.add('$task at $time');
        } else {
          _tasks.add(task);
        }
      });
      _taskController.clear(); 
    }
  }


  Future<String?> _selectTime() async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (picked != null) {
      return picked.format(context); 
    }
    return null;
  }

  
  Future<DateTime?> _selectDate(BuildContext context) async {
    return Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MyCal(selectedDate: _selectedDate),
      ),
    );
  }

 
  void _removeTask(int index) {
    setState(() {
      _tasks.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: PreferredSize(
        preferredSize: const Size.fromHeight(40),
        child: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
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
          ),
        ),
        child: Stack(children: [
          BackdropFilter(filter: ImageFilter.blur(sigmaX: 3.0,sigmaY: 3.0),
          child: Container(
            color: Colors.black.withOpacity(0.1),
          ),
          ),
        
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        controller: _taskController,
                        decoration: InputDecoration(
                          labelText: 'Enter task',
                          labelStyle: TextStyle(color: Colors.white),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: _tasks.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(
                        _tasks[index],
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      trailing: IconButton(
                        onPressed: () => _removeTask(index),
                        icon: Icon(Icons.delete, color: Colors.red),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 50,
                width: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 200),
                
                child: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                    gradient: LinearGradient(colors: [Colors.blue,Colors.tealAccent],
                    begin: Alignment.bottomLeft,
                    end: Alignment.bottomRight
                    )
                  ),
                  child: ElevatedButton(
                    onPressed: _addTask, 
                    child: Text("Add Task and Time",style: TextStyle(color: Colors.white),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
        ),
      ),
    );
  }
}

class MyCal extends StatefulWidget {
  final DateTime? selectedDate;
  const MyCal({super.key, this.selectedDate});

  @override
  State<MyCal> createState() => _MyCalState();
}

class _MyCalState extends State<MyCal> {
  DateTime today = DateTime.now();
  DateTime? selectedDate;

  @override
  void initState() {
    super.initState();
    
    selectedDate = widget.selectedDate ?? today;
  }

  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      selectedDate = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Date'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context, selectedDate); 
            },
            icon: Icon(Icons.check),
          ),
        ],
      ),
      body: Column(
        children: [
          TableCalendar(
            selectedDayPredicate: (day) => isSameDay(day, selectedDate),
            focusedDay: selectedDate!,
            firstDay: DateTime.utc(2010, 10, 16),
            lastDay: DateTime.utc(2030, 3, 14),
            onDaySelected: _onDaySelected,
          ),
        ],
      ),
    );
  }
}