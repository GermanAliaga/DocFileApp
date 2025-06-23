import 'package:docfileapp/domain/entities/category.dart';
import 'package:docfileapp/domain/entities/sistem.dart';
import 'package:docfileapp/pages/detailcategory.dart';
import 'package:docfileapp/widgets/mydrawer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late TextEditingController _controller;

  @override
  void initState()
  {
    super.initState();
    _controller = TextEditingController();
  }
  void dispose()
  {
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {  
    final medicCategory = Provider.of<Sistema>(context);
    final List<Category> elements = medicCategory.categoria;
    late String name;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Inicio'),
      ),
      drawer: const MyDrawer(),
      body: ListView.builder(
        itemCount: elements.length,
        itemBuilder: (context, index) {
          return Padding(
              padding: const EdgeInsets.all(3),
              child: ListTile(
                title: Text('${elements[index].name}'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => DetailCategory(title: elements[index].name)));
                },
              ));
        },
      ),
        floatingActionButton: FloatingActionButton(onPressed: (){setState(() {
         showDialog<String>(
            context: context,
            builder: (BuildContext context) => AlertDialog(
                    content: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      const Text(
                        'Nombre categoria',
                      ),
                      TextField(
                        controller: _controller,  
                        onChanged: (value) {
                          name = value;
                        },        
                          maxLines: 3,
                          textAlign: TextAlign.justify,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Ingresar nombre',
                          )),
                      ElevatedButton(
                        onPressed: () {
                          medicCategory.addCategory(name);
                          Navigator.pop(context);
                        },
                        child: const Text('Agregar categoria'),
                      ),
                    ],
                  ),
                )));
        const Icon(
          Icons.add,
          size: 40,
          semanticLabel: 'AddCategory',
        );
        });}, child: const Icon(Icons.add),),
    );
  }
}
