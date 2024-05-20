import 'package:flutter/material.dart';
import 'package:login_app/utils/provider/provider.dart';
import 'package:provider/provider.dart';

class CreateScreen extends StatefulWidget {
  const CreateScreen({super.key});

  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  TextEditingController txtName = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtMobile = TextEditingController();
  TextEditingController txtPass = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "LoginApp",
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Name",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 40,
                // width: MediaQuery.sizeOf(context).width,
                child: TextFormField(
                  controller: txtName,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Enter Name"),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Email",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 50,
                width: MediaQuery.sizeOf(context).width,
                child: TextFormField(
                  controller: txtEmail,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Enter Email"),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Name is required";
                    }
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Mobile no.",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 50,
                width: MediaQuery.sizeOf(context).width,
                child: TextFormField(
                  controller: txtMobile,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Enter Mobile no"),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Password",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 50,
                width: MediaQuery.sizeOf(context).width,
                child: TextFormField(
                  controller: txtPass,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Enter Password"),
                  ),
                  validator: (value) {
                    if(value!.isEmpty)
                      {
                        return "Password is required";
                      }
                    return null;
                  },
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    if(formKey.currentState!.validate())
                      {
                        String? email = txtEmail.text;
                        String? pass = txtPass.text;
                        context.read<Login>().saveData(email);
                        context.read<Login>().savePass(pass);

                        Navigator.pop(context);
                      }

                  },
                  child: const Text("Save"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
