import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'registration.dart';
import 'nearby_interface.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  initState() {
    FirebaseAuth.instance
        .currentUser()
        .then((currentUser)  {
      if (currentUser == null)
      {Navigator.pushNamed(context, RegistrationScreen.id);}
      else
      {
        Firestore.instance
            .collection("users")
            .document(currentUser.uid)
            .get()
            .then((DocumentSnapshot result) =>
            Navigator.pushNamed(context, NearbyInterface.id))
            .catchError((err) => print(err));
      }
    })
        .catchError((err) => print(err));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text("Loading..."),
        ),
      ),
    );
  }
}