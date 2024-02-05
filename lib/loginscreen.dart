import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  bool check = true;

  void login() {
    print('Name: ${_nameController.text}');
    print('Password: ${_passController.text}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/quespro-logo.png', // Path to your logo
                width: 200, // Adjust size as needed
                height: 200,
              ),
              const SizedBox(
                height: 50,
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                'QuesPro',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: _nameController,
                  decoration: const InputDecoration(
                      fillColor: Colors.black,
                      hintText: 'Email',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue, width: 4),
                          borderRadius: BorderRadius.all(Radius.circular(5)))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: _passController,
                  obscureText: check,
                  decoration: InputDecoration(
                      suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              check = !check;
                            });
                          },
                          child: Icon(
                              check ? Icons.visibility_off : Icons.visibility)),
                      fillColor: Colors.grey,
                      hintText: "Password",
                      border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)))),
                ),
              ),
              Row(
                children: [
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        style: ButtonStyle(
                            minimumSize: const MaterialStatePropertyAll(
                                Size(double.infinity, 60)),
                            shape: const MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5)))),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color.fromARGB(255, 12, 112, 194)),
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.white)),
                        onPressed: () {
                          login();
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 15),
                        )),
                  )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      // Add the action for the "Forgot Password" link
                    },
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
              const Row(
                children: [
                  Expanded(
                    child: Divider(
                      height: 7,
                      thickness: 2,
                      color: Color.fromRGBO(101, 101, 101, 0.376),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      'OR',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      height: 7,
                      thickness: 2,
                      color: Color.fromRGBO(101, 101, 101, 0.376),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an Account? ",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/register');
                    },
                    child: const Text(
                      'Sign up',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )),
        ),
      ),
    );
  }
}
