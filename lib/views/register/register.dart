import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Register extends StatelessWidget {
  Register({super.key});

  var sizebox = const SizedBox(
    height: 50,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Register',
                style: TextStyle(
                  fontSize: 36,
                  color: Colors.blue,
                ),
              ),
              const Text(
                'Please enter detail to register',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),
              sizebox,
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Name',
                ),
              ),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
              ),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Mobile Phone',
                ),
              ),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
              ),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Comfirm Password',
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'REGISTER',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Center(
                child: Column(
                  children: [
                    RichText(
                      text: const TextSpan(
                        text: 'Aleady have an account ? ',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        children: [
                          TextSpan(
                            text: 'Login',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
