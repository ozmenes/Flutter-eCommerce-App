import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key,this.toggleView}) : super(key: key);
  final Function? toggleView;
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Login Page',style: TextStyle(fontSize: 24,),),
            TextButton(
              onPressed: () async {
                widget.toggleView!();
              },
              child: const Text('Press to Register'),
            ),
          ],
        ),
      ),
    );
  }
}
