// import 'package:flutter/material.dart';
// class todolist extends StatefulWidget {
//   const todolist({super.key});

//   @override
//   State<todolist> createState() => _todolistState();
// }

// class _todolistState extends State<todolist> {
//   List<String> _todos = [];
   
//   final _todoController = TextEditingController();
  
//   String? _message;

//   void _addTodo() {
//     if (_todoController.text.isEmpty) {
//       setState(() {
//         _message = "Please enter a task";
//       }); 
//       return;
//     }
//     setState(() {
//       _todos.add(_todoController.text);
//       _todoController.clear();
//       _message = null;
//     });
//   }

  
  

//   void _removeTodo(int index) {
//     setState(() {
//       _todos.removeAt(index);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//    return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.deepPurpleAccent,
//         title: Center(child: Text('To-Do List',style: TextStyle(color: Colors.white,fontSize: 20.0),)),
//       ),
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: TextField(
//               controller: _todoController,
//               decoration: InputDecoration(
//                 labelText: 'Add Your Routine',
//                 border: OutlineInputBorder(),
//               ),
//             ),
//           ),
//           ElevatedButton(
//             onPressed: _addTodo,
//             child: Text('Add'), 
//           ),
//           Expanded(
//             child: ListView.builder(
//               itemCount: _todos.length,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   title: Text(_todos[index]),
//                   trailing: IconButton(
//                     icon: Icon(Icons.delete),
//                     onPressed: () {
//                       _removeTodo(index);
//                     },
//                   ),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
  
