import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart'as http;

class Gridview extends StatefulWidget {
  const Gridview({super.key});

  @override
  State<Gridview> createState() => _GridviewState();
}

class _GridviewState extends State<Gridview> {
List items=[];
@override
 void initState(){
  super.initState();
  product();
 }
 Future<void> product() async{
final response = await http.get(Uri.parse('https://fakestoreapi.com/products'));
if(response.statusCode == 200){
setState(() {
  items = json.decode(response.body);
});

}
else{
  throw("failed to load");
}

 }


  @override
  Widget build(BuildContext context) {
    int numberOfColumns = 2;
    int numberOfRows=4;
    return Scaffold(
      body: GridView.builder(
        
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: numberOfColumns,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 5.0),
          itemCount: numberOfColumns*numberOfRows, 
          itemBuilder: (context,index){
final item = items[index];

return Card(
  
  child: Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.network(item['image'],
        height: 25,
        width: 25,
        fit: BoxFit.cover,),
      ),
      SizedBox(height: 0.2,),
      Text(item['price'].toString()
                    ),
                    Text(item['title']),
    ],
  ),
);

          }),
    );
  }
}