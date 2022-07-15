import 'package:ecommerce_flutter_app/utils/shared/custom_clip_path.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key,this.toggleView}) : super(key: key);
  final Function? toggleView;
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  bool isApiCallProcess = false;
  bool hidePassword = true;
  bool hideConfirmPassword = true;
  String? password;
  String? email;
  String? firstName;
  String? lastName;
  final TextEditingController firstnameController = TextEditingController();
  final TextEditingController lastnameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child:Form(
            key:globalKey,
            child: Column(
              children: [
                Container(
                  color: Colors.red.shade400,
                  height: _size.height / 4,
                ),
                ClipPath(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 150,
                    color: Colors.red.shade400,
                  ),
                  clipper: CustomClipPath(),
                ),
                SizedBox(
                  width: 325,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                          controller: firstnameController,
                          keyboardType: TextInputType.text,
                          validator: (value) {
                            if (value == null) {
                              return 'Please enter First Name';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              hintText: "First Name",
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Theme.of(context)
                                          .accentColor
                                          .withOpacity(0.2))),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color:
                                      Theme.of(context).accentColor)),
                              prefixIcon: const Icon(
                                Icons.person,
                                color: Colors.redAccent,
                              ))),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                          controller: lastnameController,
                          keyboardType: TextInputType.text,
                          validator: (value) {
                            if (value == null) {
                              return 'Please enter Last Name';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              hintText: "Last Name",
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Theme.of(context)
                                          .accentColor
                                          .withOpacity(0.2))),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color:
                                      Theme.of(context).accentColor)),
                              prefixIcon: const Icon(
                                Icons.person,
                                color: Colors.redAccent,
                              ))),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value == null) {
                              return 'Please enter a valid Email Address';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              hintText: "Email Address",
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Theme.of(context)
                                          .accentColor
                                          .withOpacity(0.2))),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color:
                                      Theme.of(context).accentColor)),
                              prefixIcon: const Icon(
                                Icons.email,
                                color: Colors.redAccent,
                              ))),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                          controller: passwordController,
                          keyboardType: TextInputType.text,
                          validator: (value) {
                            if (value == null && value!.length < 4) {
                              return 'Please enter a valid Password';
                            }
                            return null;
                          },
                          obscureText: hidePassword,
                          decoration: InputDecoration(
                              hintText: "Password",
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Theme.of(context)
                                          .accentColor
                                          .withOpacity(0.2))),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color:
                                      Theme.of(context).accentColor)),
                              prefixIcon: const Icon(
                                Icons.password,
                                color: Colors.redAccent,
                              ))),
                      const SizedBox(
                        height: 20,
                      ),
                      FlatButton(
                        onPressed: () {
                          if (validateAndSave()) {
                            setState(() {
                              isApiCallProcess = true;
                            });
                          }
                        },
                        child: const Text(
                          "Register",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.redAccent,
                        padding: const EdgeInsets.symmetric(
                            vertical: 12, horizontal: 80),
                        shape: const StadiumBorder(),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextButton(
                        onPressed: () {
                          widget.toggleView!();
                        },
                        child: Text(
                          "Or go to Login",
                          style: Theme.of(context)
                              .textTheme
                              .subtitle2!
                              .copyWith(
                              color: Colors.grey.shade700,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  bool validateAndSave() {
    final form = globalKey.currentState!;
    if (form.validate()) {
      form.save();
      return true;
    }
    return false;
  }
}
