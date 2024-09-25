import 'package:flutter/material.dart';

void main() {
  runApp(MyApp()); // Remove the 'const' keyword here
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // Create a TextEditingController to capture user input from TextField
  final nameController = TextEditingController();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Shared Preference'),
        ),
        body: Center(
          child: SizedBox(
            width: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // TextField with the controller attached
                TextField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    labelText: 'Enter your name',
                  ),
                ),
                const SizedBox(height: 11), // Add spacing between widgets
                ElevatedButton(
                  onPressed: () {
                    // Capturing the input from TextField
                    var name = nameController.text;
                    print("Name: $name"); // This prints the name to console, you can replace with your logic
                  },
                  child: const Text('Save'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
