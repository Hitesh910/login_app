import 'package:flutter/material.dart';
import 'package:login_app/utils/provider/provider.dart';
import 'package:provider/provider.dart';

class ConatactScreen extends StatefulWidget {
  const ConatactScreen({super.key});

  @override
  State<ConatactScreen> createState() => _ConatactScreenState();
}

class _ConatactScreenState extends State<ConatactScreen> {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LoginApp"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                "Login",
                style: TextStyle(fontSize: 20),
              ),
            ),
            const Text(
              "Email",
              style: TextStyle(fontSize: 20),
            ),
            Container(
              height: 50,
              margin: const EdgeInsets.all(8),
              child: TextFormField(
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  label: Text(
                    "Enter Email",
                    style: TextStyle(color: Colors.grey.withOpacity(0.8)),
                  ),
                ),
                controller: txtEmail,
              ),
            ),
            const Text(
              "Password",
              style: TextStyle(fontSize: 20),
            ),
            Container(
              height: 50,
              margin: const EdgeInsets.all(8),
              child: TextFormField(
                controller: txtPass,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  label: Text(
                    "Enter Password",
                    style: TextStyle(
                      color: Colors.grey.withOpacity(0.8),
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  String? email = txtEmail.text;
                  String? pass = txtPass.text;
                  print(email);
                  print(pass);

                  context.read<Login>().getPass();
                  context.read<Login>().getData();

                  if (email == context.read<Login>().email && pass == context.read<Login>().pass)
                  {
                    context.read<Login>().setCheck(true);
                    Navigator.pushNamed(context, 'home');
                    print(context.read<Login>().check);
                  }
                  else
                  {
                    context.read<Login>().setCheck(false);
                    var Snk = const SnackBar(content: Text("Please Enter valid Id or Password"),
                      backgroundColor: Colors.red,
                    );
                    ScaffoldMessenger.of(context).showSnackBar(Snk);
                  }
                },
                child: const Text("Submit"),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "create");
                },
                child: const Text("New Account"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
