import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController _controller = TextEditingController();

  void saludar() {
    var edad = int.tryParse(_controller.text);
    if (edad != null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Hola, tengo $edad años'),
        ),
      );
    } else {
      print('Edad no válida');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Demo'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'Edad',
                border: OutlineInputBorder(),
              ),
            ),
            ElevatedButton(
              onPressed: saludar,
              child: const Text('Saludar'),
            )
          ]),
        ),
      ),
    );
  }
}
