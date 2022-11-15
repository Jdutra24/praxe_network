import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final title = (Column(
      children: const [
        SizedBox(
          width: double.infinity,
          height: 10,
        ),
        Text(
          'Login',
          style: TextStyle(
            color: Colors.white,
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ));

    /*final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 70.0,
        child: Image.asset('assets/logo.png'),
      ),
    );*/

    final username = TextFormField(
      // keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: '',
      decoration: InputDecoration(
        hintText: 'Username',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(0)),
        filled: true,
        fillColor: Colors.white,
      ),
    );

    final password = TextFormField(
      autofocus: false,
      initialValue: '',
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(0)),
        filled: true,
        fillColor: Colors.white,
      ),
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 2.0),
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            ),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
        ),
        onPressed: () {},
        child: Text('LOGIN', style: TextStyle(color: Colors.white)),
      ),
    );

    final singupButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 2.0),
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            ),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
        ),
        onPressed: () {},
        child: Text('SIGNUP', style: TextStyle(color: Colors.purple)),
      ),
    );

    final forgotLabel = TextButton(
      child: Text(
        'Forgot Password?',
        style: TextStyle(color: Colors.white),
      ),
      onPressed: () {},
    );

    return Scaffold(
      backgroundColor: Colors.purple,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            title,
            SizedBox(height: 48.0),
            /*logo,
            SizedBox(height: 48.0),*/
            /*email,
            SizedBox(height: 8.0),*/
            username,
            SizedBox(height: 8.0),
            password,
            SizedBox(height: 12.0),
            loginButton,
            singupButton,
            forgotLabel
          ],
        ),
      ),
    );
  }
}
