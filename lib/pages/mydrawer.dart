import 'package:docfileapp/pages/addfile.dart';
import 'package:docfileapp/pages/myhomepage.dart';
import 'package:docfileapp/pages/user.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({
    super.key,
  });

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children: [
        const SizedBox(
          height: 125,
          child: DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(248, 206, 174, 245),
            ),
            child: Text(
              'HomeCoffee',
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
        ListTile(
          title: const Text('MyHomePage'),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const MyHomePage()));
          },
        ),
        ListTile(
          title: const Text('AddFile'),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const AddFile()));
          },
        ),
        ListTile(
          title: const Text('User'),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => const User()));
          },
        ),
      ],
    ));
  }
}
