import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart' as prefix;
import 'package:kumon_addexc/loginpage.dart';
import 'package:kumon_addexc/profil.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _classController = TextEditingController();
  final _levelController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  var loading = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Form(
        key: _formKey,
        child: Container(
          child: ListView(
            children: [
              Container(
                padding: EdgeInsets.all(25),
                child: Text(
                  "Sign Up",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: "PatuaOne",
                      fontSize: 35,
                      color: Colors.black),
                ),
              ),
              SizedBox(width: 25, height: 25),
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    // border: Border.all(color: Color(0xFFFFFFFF), width: 7),
                    borderRadius: BorderRadius.circular(15)),
                padding: EdgeInsets.all(5),
                child: new Image.asset(
                  'images/logo.png',
                  width: 30,
                  height: 25,
                ),
              ),
              SizedBox(width: 25, height: 25),
              Container(
                child: Column(
                  children: [
                    _TextField(
                      label: "Name",
                      controller: _nameController,
                      validator: _requiredValidator,
                    ),
                    SizedBox(height: 20, width: 20),
                    _TextField(
                      label: "Class",
                      controller: _classController,
                      validator: _requiredValidator,
                    ),
                    SizedBox(height: 20, width: 20),
                    _TextField(
                      label: "Level",
                      controller: _levelController,
                      validator: _requiredValidator,
                    ),
                    SizedBox(height: 20, width: 20),
                    _TextField(
                      label: "Email",
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      validator: _requiredValidator,
                    ),
                    SizedBox(height: 20, width: 20),
                    _TextField(
                      label: "Password",
                      keyboardType: TextInputType.visiblePassword,
                      controller: _passwordController,
                      validator: _requiredValidator,
                    ),
                    SizedBox(height: 20, width: 20),
                  ],
                ),
              ),
              if (loading) ...[
                Center(
                  child: CircularProgressIndicator(),
                )
              ],
              Container(
                padding: EdgeInsets.all(30),
                height: 130,
                width: 30,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue[200],
                      alignment: Alignment.center,
                      fixedSize: Size(100, 60),
                      padding: EdgeInsets.all(20),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    onPressed: () {
                      if (_formKey.currentState != null &&
                          _formKey.currentState!.validate()) {
                        _signUp();
                      }
                      
                    },
                    child: Text(
                      "Submit Data",
                      style: TextStyle(
                          fontFamily: "PatuaOne",
                          fontSize: 25,
                          color: Colors.black),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }

  String? _requiredValidator(String? text) {
    if (text == null || text.trim().isEmpty) {
      return "Please Enter Some Text";
    }
    return null;
  }

  Future _signUp() async {
    setState(() {
      loading = true;
    });
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: _emailController.text, password: _passwordController.text);

      await FirebaseFirestore.instance.collection('users').add({
        'name': _nameController.text,
        'class': _classController.text,
        'level': _levelController.text,
        'email': _emailController.text,
      });

      await showDialog(
          context: context,
          builder: ((context) => AlertDialog(
                title: Text('Sign Up Succeeded'),
                content: Text('Your account was created, you can set up profile'),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Profil()),
                        );
                      },
                      child: Text('Ok'))
                ],
              )));
      Navigator.of(context).pop();
    } on FirebaseAuthException catch (e) {
      _handleSignUpError(e);
      setState(() {
        loading = false;
      });
    }
  }

  void _handleSignUpError(FirebaseAuthException e) {
    String messageToDisplay;
    switch (e.code) {
      case 'email-already-in-use':
        messageToDisplay = 'This email is already in use';
        break;
      case 'invalid-email':
        messageToDisplay = 'The email you entered is invalid';
        break;
      case 'operation-not-allowed':
        messageToDisplay = 'This operation is not allowed';
        break;
      case 'weak-password':
        messageToDisplay = 'The password you entered is too weak';
        break;
      default:
        messageToDisplay = 'An unknown error occured';
        break;
    }

    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text('Sign up failed'),
              content: Text(messageToDisplay),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('Ok'))
              ],
            ));
  }
}

class _TextField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final bool password;
  final TextInputType? keyboardType;
  final FormFieldValidator<String>? validator;

  const _TextField(
      {required this.label,
      required this.controller,
      this.validator,
      this.password = false,
      this.keyboardType});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
      child: TextFormField(
        validator: validator,
        keyboardType: TextInputType.emailAddress,
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(),
        ),
        obscureText: password,
      ),
    );
  }
}
