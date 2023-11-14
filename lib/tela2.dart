// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Tela2 extends StatelessWidget {
  String messege='';

  Tela2({super.key});

  @override
  Widget build(BuildContext context) {
    var data = ModalRoute.of(context)!.settings.arguments as Map<String,Object>;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tela 2'),
      ),
      body: Column(
        children: [
          Text('${data['id']}'),
          const SizedBox(height: 10,),
          Text('${data['name']}'),
          const SizedBox(height: 10,),
          Text('${data['phone']}'),
          const SizedBox(height: 10,),
          Text('${data['Address']}'),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Voltar')
          ),
        ],
      ),
    );
  }
}