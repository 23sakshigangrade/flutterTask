import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter MappingList View',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'MappingList '),
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

  var arrData = [
    {
      'name': 'sakshi',
      'mobno':'9876543210',
      'unread':'5'},
    {
      'name': 'antim',
      'mobno':'9876543210',
      'unread':'1'},
    {
      'name': 'anurag',
      'mobno':'9876543210',
      'unread':'2'},
    {
      'name': 'shivansh',
      'mobno':'9876543210',
      'unread':'8'},
    {
      'name': 'nihansh',
      'mobno':'9876543210',
      'unread':'3'}, {
      'name': 'advika',
      'mobno':'9876543210',
      'unread':'3'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

          backgroundColor: Theme
              .of(context)
              .colorScheme
              .inversePrimary,

          title: Text(widget.title),
        ),
        body: Container(

          child: ListView(
              children: arrData.map((value) =>
                  ListTile(
                    leading:Icon(Icons.account_circle),
                    title: Text(value['name'].toString()),
                    subtitle:Text(value['mobno'].toString()),
                    trailing:CircleAvatar(child:Text(value['unread'].toString())),

                  )
              ).toList()
          ),
        ));
  }
}