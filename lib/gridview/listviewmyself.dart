// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/listviewbuilder/addcart.dart';
// class Listviewmyself extends StatefulWidget {
//   const Listviewmyself({super.key});

//   @override
//   State<Listviewmyself> createState() => _ListviewmyselfState();
// }

// class _ListviewmyselfState extends State<Listviewmyself> {
// final List collections = [
// {
// 'image':'assets/image/download.jpeg',
// 'title':'MEAL',
// 'review':'Good',
// 'price':'Just ₹199',
// },
// {
// 'image':'assets/image/download.jpeg',
// 'title':'BRIYANI',
// 'review':'GOOD',
// 'price':'Just ₹599',
// },
// {
// 'image':'assets/image/download.jpeg',
// 'title':'CHICKEN',
// 'review':'Good',
// 'price':'Just ₹899',
// },
// {
// 'image':'assets/image/download.jpeg',
// 'title':'FISH',
// 'review':'Good',
// 'price':'Just ₹399',
// },
// {
// 'image':'assets/image/download.jpeg',
// 'title':'HALF MEAL',
// 'review':'Good',
// 'price':'Just ₹599',
// },
// {
// 'image':'assets/image/download.jpeg',
// 'title':'MEAL',
// 'review':'Good',
// 'price':'Just ₹499',
// },
// {
// 'image':'assets/image/download.jpeg',
// 'title':'MEAL',
// 'review':'Good',
// 'price':'Just ₹599',
// },
// {
// 'image':'assets/image/download.jpeg',
// 'title':'MEAL',
// 'review':'Good',
// 'price':'Just ₹199',
// },
// ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Center(child: Text("FOOD CODE"),),backgroundColor: Colors.cyan,),
//       body: collections.isEmpty
//       ? Center(child: CircularProgressIndicator())
//       :ListView.builder(
//         itemCount: collections.length,
//         itemBuilder: (context,index){
//           final collection =collections[index];
//           return Card(
//             elevation: 10.0,
//             margin: EdgeInsets.all(10.0),
//             child: Row(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//              children: [
//               Padding(
//               padding: const EdgeInsets.all(8.0),
//              child: Image.asset(collection['image'],
//                height: 100,
//               width: 100
//                 ),
//                   ),
//                     SizedBox(width: 10.0,),
//                     Expanded(
//                       child: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(collection['title'],style: TextStyle(fontSize: 16,color: const Color.fromARGB(255, 9, 100, 212)),),
//                             SizedBox(height: 5.0,),
//                             Text(collection['review']),
//                              SizedBox(height: 5.0,),
                             
//                             Text(collection['price']),
//                             SizedBox(height: 5.0,),
//                          Padding(
//                                padding: const EdgeInsets.all(8.0),
//                                child: ElevatedButton(onPressed: (){
//                                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>addcart()
//                                                    ));
//                                                    }, child: Padding(
//                                                      padding: const EdgeInsets.all(8.0),
//                                                      child: Text("Order Now"),
//                                                    )),
//                              )
//                             ], ), ),
                          
//                     ),
                    
                   
//                   ],
//                  ),
//           );
//         })
//     );
//   }
// }