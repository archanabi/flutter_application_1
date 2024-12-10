// import 'package:flutter/material.dart';


// class ProductList extends StatelessWidget {

//   final List<Map<String, dynamic>> products = [
//     {
//       'image': 'assets/image/download.jpeg',
//       'name': 'Biriyani',
//       'description': 'Description of Product 1',
//       'price': 29.99,
//       'review': 4.5
//     },
//     {
//       'image': 'assets/image/download.jpeg',
//       'name': 'Product 2',
//       'description': 'Description of Product 2',
//       'price': 59.99,
//       'review': 4.0
//     },
//     {
//       'image': 'assets/image/download.jpeg',
//       'name': 'Product 3',
//       'description': 'Description of Product 3',
//       'price': 89.99,
//       'review': 5.0
//     },
//     {
//       'image': 'assets/image/download.jpeg',
//       'name': 'Product 1',
//       'description': 'Description of Product 1',
//       'price': 29.99,
//       'review': 4.5
//     },
//     {
//       'image': 'assets/image/dwonload.jpeg',
//       'name': 'Product 2',
//       'description': 'Description of Product 2',
//       'price': 59.99,
//       'review': 4.0
//     },
//     {
//       'image': 'assets/images/download.jpeg',
//       'name': 'Product 3',
//       'description': 'Description of Product 3',
//       'price': 89.99,
//       'review': 5.0
//     },
//     {
//       'image': 'assets/image/download.jpg',
//       'name': 'Product 1',
//       'description': 'Description of Product 1',
//       'price': 29.99,
//       'review': 4.5
//     },
//     {
//       'image': 'assets/images/download.jpg',
//       'name': 'Product 2',
//       'description': 'Description of Product 2',
//       'price': 59.99,
//       'review': 4.0
//     },
//     {
//       'image': 'assets/images/download.jpg',
//       'name': 'Product 3',
//       'description': 'Description of Product 3',
//       'price': 89.99,
//       'review': 5.0
//     },
//     {
//       'image': 'assets/image/download.jpg',
//       'name': 'Product 1',
//       'description': 'Description of Product 1',
//       'price': 29.99,
//       'review': 4.5
//     },
//     {
//       'image': 'assets/image/download.jpg',
//       'name': 'Product 2',
//       'description': 'Description of Product 2',
//       'price': 59.99,
//       'review': 4.0
//     },
//     {
//       'image': 'assets/image/download.jpeg',
//       'name': 'Product 3',
//       'description': 'Description of Product 3',
//       'price': 89.99,
//       'review': 5.0
//     },
//     {
//       'image': 'assets/images/download.jpeg',
//       'name': 'Product 2',
//       'description': 'Description of Product 2',
//       'price': 59.99,
//       'review': 4.0
//     },
//     {
//       'image': 'assets/images/download.jpeg',
//       'name': 'Product 3',
//       'description': 'Description of Product 3',
//       'price': 89.99,
//       'review': 5.0
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//     appBar: AppBar(
     
//     ),
//         body:
//     ListView.builder(
//       physics: BouncingScrollPhysics(),
//       reverse: false,
//       shrinkWrap: true,
//       itemCount: products.length,
//       scrollDirection: Axis.vertical,
//       itemBuilder: (context, index) {
//         final product = products[index];
//         return Card(
         
//           margin: EdgeInsets.all(50.0),
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Image.asset(
//                   product['image'],
//                   width: 100,
//                   height: 100,
//                   fit: BoxFit.cover,
//                 ),
//                 SizedBox(width: 50),
//                 Expanded(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         product['name'],
//                         style: TextStyle(
//                           fontSize: 18,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       SizedBox(height: 5),
//                       Text(
//                         product['description'],
//                         style: TextStyle(fontSize: 14),
//                       ),
//                       SizedBox(height: 5),
//                       Text(
//                         '\$${product['price'].toString()}',
//                         style: TextStyle(
//                           fontSize: 16,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.green,
//                         ),
//                       ),
//                       SizedBox(height: 5),
//                       Row(
//                         children: [
//                           Icon(Icons.star, color: Colors.red),
//                           SizedBox(width: 5),
//                           Text(
//                             product['review'].toString(),
//                             style: TextStyle(fontSize: 14),
//                           ),
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     ),
//     );
//   }
// }