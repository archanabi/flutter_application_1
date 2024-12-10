import 'package:flutter/material.dart';

class Drawer extends StatefulWidget {
  const Drawer({super.key, required Column child});

  @override
  State<Drawer> createState() => _DrawerState();
}

class _DrawerState extends State<Drawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Drawer")),),
      drawer: Drawer(
        child:Column(
          children: [
            UserAccountsDrawerHeader(accountName: Text("Archana"), accountEmail: Text("Archana@gmail.com")),
            ListTile(
              leading: Icon(Icons.account_balance),
              title: Text("Account"),
            ),
            ListTile(
               leading: Icon(Icons.account_balance),
              title: Text("Account"),
              
            ) ,
            ListTile(
               leading: Icon(Icons.account_balance),
              title: Text("Account"),
            ),  
            ListTile(
               leading: Icon(Icons.account_balance),
              title: Text("Account"),
            ) , 
            ListTile(
               leading: Icon(Icons.account_balance),
              title: Text("Account"),
            ) , 
            ListTile(
               leading: Icon(Icons.account_balance),
              title: Text("Account"),
            )
          ],
        )
      ),
    );
  }
}