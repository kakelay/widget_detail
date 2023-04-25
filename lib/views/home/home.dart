import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:widget_detail/views/helper/input_validation_mixin.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget with InputValidationMixin {
  HomeScreen({super.key});

  var userNameController = TextEditingController();
  var globalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //   PopupMenuButton menu  choces ...:
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                child: const Text('Setting'),
                onTap: () {},
              ),
              PopupMenuItem(
                child: const Text('Help for more'),
                onTap: () {},
              ),
              PopupMenuItem(
                child: const Text('LogOut'),
                onTap: () {},
              )
            ],
          )
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 231, 238, 244),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Form(
              key: globalKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: userNameController,
                    validator: (password) {
                      if (isPasswordValide(password.toString())) {
                        return null;
                      } else {
                        return 'Password must  be greater than 6';
                      }
                    },
                    onFieldSubmitted: ((value) {
                      if (globalKey.currentState!.validate()) {
                        globalKey.currentState!.save();
                      }
                    }),
                    maxLength: 15,
                    decoration: const InputDecoration(
                      helperText: 'This is label for Input Gmail',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      labelText: 'Input Gmail',
                      suffixIcon: Icon(Icons.email),
                      suffixText: '@gmail.com',
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const TextField(
                    obscureText: true,
                    obscuringCharacter: '#',
                    decoration: InputDecoration(
                      helperText: 'This is label for Input Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      labelText: 'Input Password',
                      suffixIcon: Icon(Icons.password),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),

                  //  code for  CircularProgressIndicator from  network
                  Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvJRR-U9ypdUmfQPO5qLWJQTohAtjMB-4Zf4__wbTP3MaW3H-aDBdO9OvF7hhhHfFTuzI&usqp=CAU',
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) {
                        return child;
                      } else {
                        return const Center(
                          child: CircularProgressIndicator(
                            valueColor:
                                AlwaysStoppedAnimation<Color>(Colors.red),
                          ),
                        );
                      }
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.pink,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                    child: const Text(
                      'Press Me',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * .2,
                    width: 200,
                    alignment: Alignment.center,
                    color: Colors.deepOrange,
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: const Text(
                      'Hola',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Lottie.asset(
                    'assets/lotties/pizza.json',
                  ),
                  Lottie.network(
                    'https://assets8.lottiefiles.com/packages/lf20_fefIZO.json',
                  ),
                  Lottie.asset(
                    'assets/lotties/pizza.json',
                  ),
                  Lottie.network(
                    'https://assets8.lottiefiles.com/packages/lf20_fefIZO.json',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
