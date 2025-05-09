import 'package:docfileapp/pages/addfile.dart';
import 'package:docfileapp/pages/mydrawer.dart';
import 'package:docfileapp/pages/user.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'MyHomePage',
              ),
            ]),
      ),
      drawer:
          MyDrawer(), /*Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Home'),
              selected: _selectedIndex == 0,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyHomePage(title: 'MyHomePage')));
              },
            ),
            ListTile(
              title: const Text('AddFile'),
              selected: _selectedIndex == 1,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AddFile(title: 'AddFile')));
              },
            ),
            ListTile(
              title: const Text('User'),
              selected: _selectedIndex == 2,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => User(title: 'User page')));
              },
            ),
          ],
        ),
      ),*/
    );
  }
}
