import 'package:ecommerce_flutter_app/utils/shared/custom_clip_path.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key,this.toggleView}) : super(key: key);
  final Function? toggleView;
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool hidePassword = true;
  bool isApiCallProcess = false;
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  String? username;
  String? password;
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
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
           Form(
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.center,
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 const SizedBox(
                   height: 40.0,
                 ),
                 SizedBox(
                   width: 250,
                   child: TextFormField(
                     controller: usernameController,
                     keyboardType: TextInputType.emailAddress,
                     validator: (value) => !value!.contains('@')
                         ? "Email should be valid."
                         : null,
                     onChanged: (val) {
                       setState(() {
                         username = val;
                       });
                     },
                     decoration: InputDecoration(
                         labelText: "Email Address",
                         labelStyle: Theme.of(context)
                             .textTheme
                             .subtitle1!
                             .copyWith(color: Colors.grey.shade700),
                         suffixIcon: Icon(
                           Icons.email_outlined,
                           size: 17,
                           color: Colors.grey.shade700,
                         )),
                   ),
                 ),
                 SizedBox(
                   width: 250,
                   child: TextFormField(
                     controller: passwordController,
                     keyboardType: TextInputType.text,
                     obscureText: hidePassword,
                     validator: (val) => val!.length < 6
                         ? 'Enter a password 6+ chars long.'
                         : null,
                     onChanged: (val) {
                       setState(() {
                         password = val;
                       });
                     },
                     decoration: InputDecoration(
                         labelText: "Password",
                         labelStyle: Theme.of(context)
                             .textTheme
                             .subtitle1!
                             .copyWith(color: Colors.grey.shade700),
                         suffixIcon: IconButton(
                           icon: Icon(hidePassword
                               ? Icons.visibility_off
                               : Icons.visibility),
                           onPressed: () {
                             setState(() {
                               hidePassword = !hidePassword;
                             });
                           },
                           color: Colors.red.shade400.withOpacity(0.5),
                         )),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.fromLTRB(20, 20, 40, 10),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.end,
                     children: [
                       InkWell(
                         child: Text(
                           "Forget Password?",
                           style: Theme.of(context)
                               .textTheme
                               .subtitle2!
                               .copyWith(
                             color: Colors.red.shade400,
                           ),
                         ),
                       ),
                     ],
                   ),
                 ),
                 //Register text
                 Padding(
                   padding: const EdgeInsets.fromLTRB(20, 0, 40, 0),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.end,
                     children: [
                       InkWell(
                         onTap: () async {
                           widget.toggleView!();
                         },
                         child: Text(
                           "Register",
                           style: Theme.of(context)
                               .textTheme
                               .subtitle2!
                               .copyWith(
                               color: Colors.red.shade400
                                   .withOpacity(0.8),
                               decoration:
                               TextDecoration.underline),
                         ),
                       ),
                     ],
                   ),
                 ),
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
                     "Login",
                     style: TextStyle(color: Colors.white),
                   ),
                   color: Colors.redAccent,
                   padding: const EdgeInsets.symmetric(
                       vertical: 12, horizontal: 80),
                   shape: const StadiumBorder(),
                 ),
                 const SizedBox(
                   height: 40,
                 ),
                 Text(
                   "Or Login using Social Media",
                   style: Theme.of(context)
                       .textTheme
                       .subtitle2!
                       .copyWith(
                       color: Colors.grey.shade700,
                       fontWeight: FontWeight.bold),
                 ),
                 const SizedBox(
                   height: 20,
                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     IconButton(
                         onPressed: () async {
                         },
                         icon: Icon(Icons.login,
                             color: Colors.grey
                                 .shade700
                         )),
                     IconButton(
                         onPressed: () {},
                         icon: Icon(Icons.facebook,
                             color: Colors.grey.shade700)),
                     IconButton(
                         onPressed: () {},
                         icon: Icon(Icons.gite,
                             color: Colors.grey.shade700)),
                   ],
                 ),
               ],
             ),
           ),
         ],
       ),
      ),
    );
  }
  bool validateAndSave() {
    final form = _formKey.currentState!;
    if (form.validate()) {
      form.save();
      return true;
    }
    return false;
  }
}
