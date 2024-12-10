import 'package:flutter/material.dart';

class Item {
  final String name;
  final String description;

  const Item({required this.name, required this.description});
}

class TaskPage extends StatefulWidget {
  @override
  _TaskPageState createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  List<Item> categories = [];
  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();

  void _addCategory() {
    setState(() {
      categories.add(Item(name: _nameController.text, description: _descriptionController.text));
    });
    _nameController.clear();
    _descriptionController.clear();
  }

  void _editCategory(int index, String name, String description) {
    setState(() {
      categories[index] = Item(name: name, description: description);
    });
  }

  void _deleteCategory(int index) {
    setState(() {
      categories.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Adding Category',style: TextStyle(color: Colors.red),)),
      ),
      body: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(categories[index].name),
            subtitle: Text(categories[index].description),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () {
                    _nameController.text = categories[index].name;
                    _descriptionController.text = categories[index].description;
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('Edit Category'),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              TextField(
                                controller: _nameController,
                                decoration: InputDecoration(labelText: 'Category Name'),
                              ),
                              TextField(
                                controller: _descriptionController,
                                decoration: InputDecoration(labelText: 'Category Description'),
                              ),
                            ],
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('Cancel'),
                            ),
                            TextButton(
                              onPressed: () {
                                _editCategory(index, _nameController.text, _descriptionController.text);
                                Navigator.of(context).pop();
                              },
                              child: Text('Save'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
                IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {
                    _deleteCategory(index);
                  },
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text('Add Category'),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextField(
                      controller: _nameController,
                      decoration: InputDecoration(labelText: 'Category Name'),
                    ),
                    TextField(
                      controller: _descriptionController,
                      decoration: InputDecoration(labelText: 'Category Description'),
                    ),
                  ],
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('Cancel'),
                  ),
                  TextButton(
                    onPressed: () {
                      _addCategory();
                      Navigator.of(context).pop();
                    },
                    child: Text('Add'),
                  ),
                ],
              );
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}



















// import 'package:flutter/material.dart';

// class Items {
//   String name;
//   String description;

//   Items({required this.name, required this.description});
// }

// class TaskPage extends StatefulWidget {
//   @override
//   _TaskPageState createState() => _TaskPageState();
// }

// class _TaskPageState extends State<TaskPage> {
//  final  List collections = [];

//  //add function
//   void _addinglist(String name, String description) {
//     setState(() {
//       collections.add(Items(name: name, description: description));
//     });
//   } //edit button function
//   void _editinglist(int index, String name, String description) {
//     setState(() {
//       collections[index].name = name;
//       collections[index].description = description;
//     });
//   }
//   //deleting button function
//   void _deletelist(int index) {
//     setState(() {
//       collections.removeAt(index);
//     });
//   }
//   //dialog show function

// void _showAlertDialog({Items? category, int? index}) {
//     TextEditingController nameController =
//         TextEditingController(text: category?.name ?? '');
//     TextEditingController descriptionController =
//         TextEditingController(text: category?.description ?? '');

//     showDialog(
//       context: context,builder: (context) {
//         return AlertDialog(
//           title: Text(category == null ? 'Add Category':'Edit Category'),
//           content: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               TextField(
//                 controller: nameController,
//                 decoration: InputDecoration(labelText: 'Category Name'),
//               ),
//               TextField(
//                 controller: descriptionController,
//                 decoration: InputDecoration(labelText: 'Category Description'),
//               ),
//             ],
//           ),
//           actions: [
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//               child: Text('Cancel'),
//             ),
//             TextButton(
//               onPressed: () {
//                 if (category == null) {
//                   _addinglist(
//                     nameController.text,
//                     descriptionController.text,
//                   );
//                 } else {
//                   _editinglist(
//                     index!,
//                     nameController.text,
//                     descriptionController.text,
//                   );
//                 }
//                 Navigator.of(context).pop();
//               },
//               child: Text(category == null ? 'Add' : 'Save'),
//             ),
//           ],
//         );
//       },
//     );
//   }

//   //building 
//   Widget _buildCategoryList() {
//     return ListView.builder(
//       itemCount: collections.length,
//       itemBuilder: (context, index) {
//         final collection = collections[index];
//         return ListTile(
//           title: Text(collection.name),
//           subtitle: Text(collection.description),
//           trailing: Row(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               IconButton(
//                 icon: Icon(Icons.edit),
//                 onPressed: () {
//                   _showAlertDialog( index: index);
//                 },
//               ),
//               IconButton(
//                 icon: Icon(Icons.delete),
//                 onPressed: () {
//                   _deletelist(index);
//                 },
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Center(child: Text('AddingCategory',style: TextStyle(color: const Color.fromARGB(255, 220, 31, 31)),),),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: _buildCategoryList(),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           _showAlertDialog(); 
//         },
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }


