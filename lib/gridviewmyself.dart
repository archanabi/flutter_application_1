// import 'package:flutter/material.dart';

// class Gridviewmyself extends StatefulWidget {
//   const Gridviewmyself({super.key});

//   @override
//   State<Gridviewmyself> createState() => _GridviewmyselfState();
// }

// class _GridviewmyselfState extends State<Gridviewmyself> {
//   final List collections=[
// {
// 'image' : 'assets/image/download.jpeg',
// 'name':'Briyani',
// 'description' : 'Food type 1',
// 'price':999,
// 'review':3.5,

// },
// {
// 'image' : 'assets/image/download.jpeg',
// 'name':'Briyani',
// 'description' : 'Food type 1',
// 'price':999,
// 'review':4.0,
// },
// {
// 'image' : 'assets/image/download.jpeg',
// 'name':'Briyani',
// 'description' : 'Food type 1',
// 'price':999,
// 'review':4.0,
// },
// {
// 'image' : 'assets/image/download.jpeg',
// 'name':'Briyani',
// 'description' : 'Food type 1',
// 'price':999,
// 'review':3.5,
// },
// {
// 'image' : 'assets/image/download.jpeg',
// 'name':'Briyani',
// 'description' : 'Food type 1',
// 'price':999,
// 'review':3.5,
// },
// {
// 'image' : 'assets/image/download.jpeg',
// 'name':'Briyani',
// 'description' : 'Food type 1',
// 'price':999,
// 'review':4.0,
// },
// {
// 'image' : 'assets/image/download.jpeg',
// 'name':'Briyani',
// 'description' : 'Food type 1',
// 'price':999,
// 'review':3.5,
// },
// {
// 'image' : 'assets/image/download.jpeg',
// 'name':'Briyani',
// 'description' : 'Food type 1',
// 'price':999,
// 'review':3.5,
// }
// ];
//   @override
//   Widget build(BuildContext context) {
//     int numberOfColumns = 4;
//     int numberOfRows = 2;
//     return Scaffold(
//      appBar: AppBar(title: Center(child: Text("FOOD CORNER")),
//      backgroundColor: Colors.blue,),
// body: Flexible(
//   flex: 2,
//   child: GridView.builder(
//     itemCount: numberOfRows*numberOfColumns,
//     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//       crossAxisCount: numberOfColumns,
//       crossAxisSpacing: 10.0,
//       mainAxisSpacing: 10.0,
//       childAspectRatio: 0.75,
//       ), 
//     itemBuilder: (context,index){
//       final collection = collections[index];
//       return Card(
//         elevation: 10.0,
//         margin: EdgeInsets.all(10.0),
//   child: Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Image.asset(collection['image'],
                
      
//        width: double.infinity,
//         ),
//       ),
//      Expanded(child: Padding(
//        padding: const EdgeInsets.all(8.0),
//        child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//            Text(collection['name'],style: TextStyle(fontSize: 20.0,color: Colors.blue),),
//         Text(collection['description']),
//         Text('\$ ${collection['price'].toString()}'),
//         Text(collection['review'].toString())
//         ],
//        ),
//      ))
//     ],
//   ),
  
//       );
//     }),
// ),

//     );
//   }
// }