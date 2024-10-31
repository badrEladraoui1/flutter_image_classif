import 'package:flutter/material.dart';

class RegisterForm extends StatelessWidget {
  RegisterForm({super.key});

  TextEditingController email_controller = TextEditingController();
  TextEditingController name_controller = TextEditingController();
  TextEditingController password_controller = TextEditingController();
  TextEditingController password_confirm_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: const Text("FORM")),
      ),
      body: Container(
          padding: EdgeInsets.all(40.0),
          child: Column(
            children: [
              TextFormField(
                onChanged: (value) {
                  print(value);
                },
                controller: name_controller,
                decoration: const InputDecoration(
                    hintText: "exemple", icon: Icon(Icons.person)),
              ),
              const SizedBox(height: 30.0),
              TextFormField(
                onChanged: (value) {
                  print(value);
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                controller: email_controller,
                decoration: const InputDecoration(
                    hintText: "exemple@gmail.com", icon: Icon(Icons.email)),
              ),
              const SizedBox(height: 30.0),
              TextFormField(
                onChanged: (value) {
                  print(value);
                },
                controller: password_controller,
                obscureText: true,
                decoration: const InputDecoration(
                    hintText: "******", icon: Icon(Icons.password)),
              ),
              const SizedBox(height: 30.0),
              TextFormField(
                onChanged: (value) {
                  print(value);
                },
                controller: password_confirm_controller,
                obscureText: true,
                decoration: const InputDecoration(
                    hintText: "******", icon: Icon(Icons.lock)),
              ),
              ElevatedButton(onPressed: () {}, child: Text("Register"))
            ],
          )),
    );
  }
}
