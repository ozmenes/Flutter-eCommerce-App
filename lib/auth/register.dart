import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key,this.toggleView}) : super(key: key);
  final Function? toggleView;
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Register Page',style: TextStyle(fontSize: 24,),),
            TextButton(
              onPressed: () async {
                widget.toggleView!();
              },
              child: const Text('Press to Login'),
            ),
          ],
        ),
      ),
    );
  }
}
