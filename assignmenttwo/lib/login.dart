import 'package:flutter/material.dart';
import 'package:assignmenttwo/home.dart';

class LoginScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(9),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: Image.asset('assets/images/logo.png'),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: 'johndoe@hotmail.com',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    
                    return null;
                  },
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: TextFormField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                  
                    return null;
                  },
                ),
              ),
              const SizedBox(height: 5),
              TextButton(onPressed: () {}, child: const Text('Forgot password?')),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    
                    bool signUpSuccessful = true;

                    if (signUpSuccessful) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MenuPage()),
                      );
                    }
                  }
                },
                child: const Text('Sign In'),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              ),
              const Text('or'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(icon: const Icon(Icons.account_circle), onPressed: () {}),
                  IconButton(icon: const Icon(Icons.facebook), onPressed: () {}),
                ],
              ),
              TextButton(onPressed: () {}, child: const Text("Don't have an account? Sign Up")),
            ],
          ),
        ),
      ),
    );
  }
}
