import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _nameController = TextEditingController();
  final List<String> _nameList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Example'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Enter a name'),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              _addNameToList();
            },
            child: Text('Add to List'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _nameList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_nameList[index]),
                  onTap: () {
                    _showNameDialog(_nameList[index]);
                  },
                  onLongPress: () {
                    _showContextMenu(context, _nameList[index]);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void _addNameToList() {
    String name = _nameController.text;
    if (name.isNotEmpty) {
      setState(() {
        _nameList.add(name);
        _nameController.clear();
      });
    }
  }

  void _showNameDialog(String name) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Selected Name'),
          content: Text(name),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  void _showContextMenu(BuildContext context, String selectedName) {
    final _editController = TextEditingController(text: selectedName);

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Context Menu'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                onPressed: () {
                  _showDeleteConfirmationDialog(selectedName);
                },
                child: Text('Delete Item'),
              ),
              ElevatedButton(
                onPressed: () {
                  _showEditDialog(selectedName, _editController);
                },
                child: Text('Edit Item'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Exit'),
              ),
            ],
          ),
        );
      },
    );
  }

  void _showDeleteConfirmationDialog(String selectedName) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Delete Item'),
          content: Text('Are you sure want to delete $selectedName?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('No'),
            ),
            TextButton(
              onPressed: () {
                _deleteItem(selectedName);
                Navigator.pop(context);
              },
              child: Text('Yes'),
            ),
          ],
        );
      },
    );
  }

  void _deleteItem(String selectedName) {
    setState(() {
      _nameList.remove(selectedName);
    });
  }

  void _showEditDialog(String selectedName, TextEditingController editController) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Edit Item'),
          content: TextField(controller: editController),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                _editItem(selectedName, editController.text);
                Navigator.pop(context);
              },
              child: Text('Save'),
            ),
          ],
        );
      },
    );
  }

  void _editItem(String oldName, String newName) {
    setState(() {
      int index = _nameList.indexOf(oldName);
      _nameList[index] = newName;
    });
  }
}
