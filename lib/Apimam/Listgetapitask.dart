import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Listgetapitask extends StatefulWidget {
  const Listgetapitask({super.key});

  @override
  State<Listgetapitask> createState() => _ListgetapitaskState();
}

class _ListgetapitaskState extends State<Listgetapitask> {

  List  items =[];
  @override
  
  void initState() {
   super.initState();
   product();
  }
  Future<void> product() async {
    final response = await http.get(Uri.parse('https://fakestoreapi.com/products'));

    if (response.statusCode == 200) {
      setState(() {
        items = json.decode(response.body);
      });
    } 
    else {
      throw Exception('Failed to load products');
    }
  }
@override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: Text("Get Api"),),
body: ListView.builder(
  itemCount: items.length,
  itemBuilder: (context,index){
final item = items[index];
return Card(
child: Row(
  children: [
    Image.network(item['image'],
    height: 100,
    width: 100,
    fit: BoxFit.cover,
    ),
    SizedBox(width: 20.0,),
  Expanded(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Text(item['title']),

        SizedBox(height: 20.0,),
        Text(item['description'])
      ],
    ),
  )
  ],
),


);

  })



    );
  }
}