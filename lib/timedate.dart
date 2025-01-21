import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class MyCal extends StatefulWidget {
  const MyCal({super.key});

  @override
  State<MyCal> createState() => _MyCalState();
}

class _MyCalState extends State<MyCal> {
  DateTime today = DateTime.now();
  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calendar'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            child: TableCalendar(
              selectedDayPredicate: (day) => isSameDay(day, today),
              focusedDay: today,
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
              onDaySelected: _onDaySelected,
            ),
          )
        ],
      ),
    );
  }
}




















// import 'package:flutter/material.dart';

// class Timedate extends StatefulWidget {
//   const Timedate({super.key});

//   @override
//   State<Timedate> createState() => _TimedateState();
// }

// class _TimedateState extends State<Timedate> {
//   final List<String> _times = [];
//   final TextEditingController _timeController = TextEditingController();

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
//           children: [
//             ElevatedButton(
//               onPressed: _selectTime,
//               child: const Text("Add Time"),
//             ),
//             const SizedBox(height: 16),
//             Expanded(
//               child: ListView.builder(
//                 itemCount: _times.length,
//                 itemBuilder: (context, index) {
//                   return ListTile(
//                     title: Text(_times[index]),
//                     trailing: IconButton(
//                       icon: const Icon(Icons.delete),
//                       onPressed: () => _removeTime(index),
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

