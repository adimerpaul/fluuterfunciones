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
    // var edad = int.tryParse(_controller.text);
    // print(edad);
    // if (edad != null) {
    //   if (edad >= 18) {
    //     print('Hola, eres mayor de edad');
    //   } else {
    //     print('Hola, eres menor de edad');
    //   }
    // } else {
    //   print('Edad no válida');
    // }

    // for (var i = 0; i < 5; i++) {
    //   print('Iteración $i');
    // }

    // var edad = 0;

    // while (edad < 18) {
    //   print('Eres menor de edad');
    //   edad++;
    // }

    // var numeros = [1, 2, 3, 4];

    // numeros.add(10);

    // print(numeros); // [1, 2, 3, 4, 5]

    var usuario = {
      'nombre': 'Adimer',
      'edad': 30,
    };
    print(usuario['nombre']); // Adimer
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
