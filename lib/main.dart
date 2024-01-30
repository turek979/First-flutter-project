import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MobilDSW',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue.shade600),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'MobilDSW'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        title: Text(widget.title,
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white)),
      ),
      body: Center(
        child: Column(
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 15),
            SvgPicture.asset(
              'assets/svg/login.svg',
              height: 50,
              width: 50,
            ),
            const SizedBox(height: 15),
            const Text(
              'Logowanie',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'E-mail',
                    border: OutlineInputBorder(),
                  ),
                  style: const TextStyle(
                    fontSize: 16,
                  )),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
              child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Hasło',
                    border: OutlineInputBorder(),
                  ),
                  style: const TextStyle(
                    fontSize: 16,
                  )),
            ),
            RichText(
              text: TextSpan(
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.lightBlue,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Zapomniałeś hasła?',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            print('Reakcja na przycisk');
                          })
                  ]),
            ),
            const Checkbox(value: false, onChanged: null),
            TextButton(
              onPressed: null,
              style: TextButton.styleFrom(
                  backgroundColor: Colors.lightBlue.shade600,
                  minimumSize: const Size(370, 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0))),
              child:
                  const Text('Zaloguj', style: TextStyle(color: Colors.white)),
            ),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Nie masz konta?',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(width: 10),
                Text('Zarejestruj się',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Colors.blue,
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
