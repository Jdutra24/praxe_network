import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainPage extends StatefulWidget {
  static String tag = 'main-page';

  const MainPage({super.key});

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    final title = (Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 10,
        ),
        Text(
          'Praxe Network',
          style: TextStyle(
            color: Color.fromRGBO(122, 41, 122, 1),
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ));
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 120.0,
        child: SvgPicture.asset('assets/logo.svg',
            color: Color.fromRGBO(122, 41, 122, 1)),
      ),
    );

    final loginButton = Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            ),
          ),
          backgroundColor:
              MaterialStateProperty.all<Color>(Color.fromRGBO(122, 41, 122, 1)),
        ),
        onPressed: () {},
        child: const Text('LOGIN', style: TextStyle(color: Colors.white)),
      ),
    );

    final singupButton = Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
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
        child: const Text('SIGNUP',
            style: TextStyle(color: Color.fromRGBO(122, 41, 122, 1))),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: 20.0),
            title,
            const SizedBox(height: 48.0),
            loginButton,
            singupButton,
          ],
        ),
      ),
    );
  }
}
