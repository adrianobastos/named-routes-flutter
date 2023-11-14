import 'package:flutter/material.dart';
import 'package:namedroutes/tela2.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation page',
    theme: ThemeData(primarySwatch: Colors.blue),
    home: const MyApp(),
    routes: {
      '/tela2': (ctx) => Tela2(),
    },
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Named Routes'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context)
                .pushNamed('/tela2',
                arguments: {
                  'id':1,
                  'name':'Adriano Bastos',
                  'phone':'(15)98145-9493',
                  'Address':'Sorocaba'
                });
          },
          child: const Text('Tela 2'),
        ),
      ),
    );
  }
}