import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_social/_routing/routes.dart';
import 'package:flutter_social/utils/colors.dart';
import 'package:line_icons/line_icons.dart';

class ResetPasswordPage extends StatefulWidget {
  ResetPasswordPage({Key key}) : super(key: key);
  @override
  _ResetPasswordPageState createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  final _formKey = GlobalKey<FormState>();
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  FirebaseAuth _auth = FirebaseAuth.instance;
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final appBar = Padding(
      padding: EdgeInsets.only(bottom: 40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          )
        ],
      ),
    );

    final pageTitle = Container(
      child: Text(
        "Reset Password",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 40.0,
        ),
      ),
    );

    resetPassword() {
      String email = emailController.text.trim();
      _auth.sendPasswordResetEmail(email: email);
      scaffoldKey.currentState.showSnackBar(SnackBar(
        content: Text("We send the detail to $email successfully.",
            style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.green[300],
      ));
    }

      final emailField = TextFormField(
        controller: emailController,
        decoration: InputDecoration(
          labelText: 'Email Address',
          labelStyle: TextStyle(color: Colors.white),
          prefixIcon: Icon(
            LineIcons.envelope,
            color: Colors.white,
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
        keyboardType: TextInputType.emailAddress,
        style: TextStyle(color: Colors.white),
        cursorColor: Colors.white,
      );

      final resetPasswordForm = Padding(
        padding: EdgeInsets.only(top: 30.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[emailField],
          ),
        ),
      );

      final resetPasswordBtn = Container(
        margin: EdgeInsets.only(top: 40.0),
        height: 60.0,
        width: MediaQuery
            .of(context)
            .size
            .width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7.0),
          border: Border.all(color: Colors.white),
          color: Colors.white,
        ),
        child: RaisedButton(
          elevation: 5.0,
          onPressed: () {
            resetPassword();
          },
          color: Colors.white,
          shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(7.0),
          ),
          child: Text(
            'RESET',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 20.0,
            ),
          ),
        ),
      );

      final newUser = Padding(
        padding: EdgeInsets.only(top: 50.0),
        child: InkWell(
          onTap: () => Navigator.pushNamed(context, registerViewRoute),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Or',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                ' Create new account',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      );

      return Scaffold(
        key: scaffoldKey,
        body: Container(
          padding: EdgeInsets.only(top: 30.0),
          decoration: BoxDecoration(gradient: primaryGradient),
          height: MediaQuery
              .of(context)
              .size
              .height,
          width: MediaQuery
              .of(context)
              .size
              .width,
          child: Column(
            children: <Widget>[
              appBar,
              Container(
                padding: EdgeInsets.only(left: 30.0, right: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    pageTitle,
                    resetPasswordForm,
                    resetPasswordBtn,
                    newUser
                  ],
                ),
              )
            ],
          ),
        ),
      );

  }
}
