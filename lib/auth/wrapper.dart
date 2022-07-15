import 'package:ecommerce_flutter_app/pages/dashboard.page.dart';
import 'package:flutter/material.dart';

import 'authentication.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  dynamic userID;
  @override
  Widget build(BuildContext context) {
    //userID= 1;
    debugPrint("userID => "+userID.toString());
    if(userID != null) {
      return const DashboardPage();
    }else{
      return const Authenticate();
    }
  }
}
