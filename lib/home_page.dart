import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

final textoController = TextEditingController();

class _HomePageState extends State<HomePage> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Forms"),
      ),
      body: Form(
          key: formKey,
          child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const CusttomTexField(
                      label: "Name",
                      icon: Icons.person,
                      hint: "Coloque seu nome"),
                  const SizedBox(height: 15),
                  const CusttomTexField(
                      label: "E-mail",
                      icon: Icons.mail,
                      hint: "Coloque seu e-mail"),
                  const SizedBox(height: 15),
                  const CusttomTexField(
                      label: "Password",
                      icon: Icons.key,
                      hint: "Coloque sua senha"),
                  const SizedBox(height: 15),
                  const CusttomTexField(
                      label: "Confirm Password",
                      icon: Icons.key,
                      hint: "Coloque sua senha"),
                  const SizedBox(height: 15),
                  SizedBox(
                    width: double.infinity,
                    height: 40,
                    child: ElevatedButton.icon(
                        onPressed: () {
                          formKey.currentState?.validate();
                        },
                        icon: const Icon(Icons.save),
                        label: const Text("Salvar")),
                  ),
                  const SizedBox(height: 15),
                  SizedBox(
                    width: double.infinity,
                    height: 40,
                    child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red),
                        onPressed: () {},
                        icon: const Icon(Icons.save),
                        label: const Text("Reset")),
                  ),
                ],
              ))),
    );
  }
}

class CusttomTexField extends StatelessWidget {
  final String label;
  final String? hint;
  final IconData? icon;
  const CusttomTexField({super.key, required this.label, this.icon, this.hint});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (text) {
        if (text == null || text.isEmpty) {
          return 'Esse campo não pode ser vazio';
        }
      },
      controller: textoController,
      decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: label,
          prefixIcon: Icon(icon),
          hintText: hint),
    );
  }
}

                  // ValueListenableBuilder(
                  //     valueListenable: textoController,
                  //     builder: (_, __, ___) {
                  //       return Text(textoController.text);
                  //     })