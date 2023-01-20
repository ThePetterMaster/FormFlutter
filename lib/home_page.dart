import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

final textoController = TextEditingController();

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text("Forms"),
        ),
        body: Container(
          color: Colors.grey,
          child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: const [
                  CusttomTexField(label: "name"),
                  CusttomTexField(label: "name2"),
                  CusttomTexField(label: "name3"),
                ],
              )),
        ));
  }
}

class CusttomTexField extends StatelessWidget {
  final String label;
  const CusttomTexField({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textoController,
      decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: label,
          prefixIcon: const Icon(Icons.person),
          hintText: "Coloque o seu nome"),
    );
  }
}

                  // ValueListenableBuilder(
                  //     valueListenable: textoController,
                  //     builder: (_, __, ___) {
                  //       return Text(textoController.text);
                  //     })