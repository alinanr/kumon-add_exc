import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:kumon_addexc/home.dart';
import 'package:kumon_addexc/signup.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: MyCustomForm());
  }
}

class MyCustomForm extends StatefulWidget {
  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  Future<FirebaseApp> _initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    return firebaseApp;
  }

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initializeFirebase(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return LoginScreen();
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  static Future<User?> loginUsingEmailPassword(
      {required String email,
      required String password,
      required BuildContext context}) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;
    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      user = userCredential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == "user not found") {
        print("No User found for that email");
      }
    }
    return user;
  }

  var loading = false;
   TextEditingController _emailController = TextEditingController();
    TextEditingController _pwController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    TextEditingController _emailController = TextEditingController();
    TextEditingController _pwController = TextEditingController();
    return Form(
      key: _formKey,
      child: Container(
        color: Colors.white,
        child: ListView(
          children: [
            Column(children: [
              Padding(padding: EdgeInsets.all(45)),
              Text(
                "AddExc",
                style: TextStyle(
                    fontFamily: "LilitaOne",
                    fontSize: 75,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                width: 35,
                height: 35,
              ),
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
                  fit: BoxFit.cover,
                ),
                clipBehavior: Clip.hardEdge,
              ),
              SizedBox(width: 25, height: 20),
              Container(
                padding: EdgeInsets.all(10),
                height: 350,
                width: 300,
                child: ListView(children: [
                  Column(
                    children: [
                      TextFormField(
                        controller: _emailController,
                        maxLines: 1,
                        validator: (val) => val!.isEmpty ? 'Enter Email' : null,
                        onChanged: (val) {
                          if (mounted) {
                            setState(() => _emailController = val
                                as TextEditingController); //the email will trow to String that will give to firebaseAuth
                          }
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          fillColor: CupertinoColors.extraLightBackgroundGray,
                          labelText: "Email",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8)),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                        height: 10,
                      ),
                      TextFormField(
                        controller: _pwController,
                        obscureText: true,
                        maxLines: 1,
                        validator: (val) => val!.isEmpty ? 'Enter Email' : null,
                        onChanged: (val) {
                          if (mounted) {
                            setState(() => _pwController = val
                                as TextEditingController); //the email will trow to String that will give to firebaseAuth
                          }
                        },
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          fillColor: CupertinoColors.extraLightBackgroundGray,
                          labelText: "Password",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8)),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                        height: 10,
                      ),
                    ],
                  ),
                  if (loading) ...[
                    Center(
                      child: CircularProgressIndicator(),
                    )
                  ],
                  SizedBox(width: 20, height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.lightBlue[200],
                          onPrimary: Colors.black,
                          alignment: Alignment.center,
                          minimumSize: Size(50, 40),
                          padding: EdgeInsets.all(20),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        onPressed: () async {
                          User? user = await loginUsingEmailPassword(
                              email: _emailController.text,
                              password: _pwController.text,
                              context: context);
                          print(user);

                          if (user != null) {
                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(builder: (context) => Home()),
                              (Route<dynamic> route) => false,
                            );
                          }
                        },
                        child: Text(
                          "Log In",
                          style:
                              TextStyle(fontFamily: "LilitaOne", fontSize: 25),
                        ),
                      ),
                      SizedBox(height: 20, width: 20),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.lightBlue[200],
                          onPrimary: Colors.black,
                          alignment: Alignment.center,
                          minimumSize: Size(50, 40),
                          padding: EdgeInsets.all(20),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(builder: (context) => SignUp()),
                            (Route<dynamic> route) => false,
                          );
                        },
                        child: Text(
                          "Sign Up",
                          style:
                              TextStyle(fontFamily: "LilitaOne", fontSize: 25),
                        ),
                      ),
                    ],
                  )
                ]),
              )
            ]),
          ],
        ),
      ),
    );
  }
}
