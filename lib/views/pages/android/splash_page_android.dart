import 'package:flutter/material.dart';

class SplashPageAndroid extends StatefulWidget {
  const SplashPageAndroid({super.key});

  @override
  State<SplashPageAndroid> createState() => _SplashPageAndroidState();
}

class _SplashPageAndroidState extends State<SplashPageAndroid> {

  @override
  void initState(){
    super.initState();
    Future.delayed(const Duration(seconds: 3)).then((_) => Navigator.of(context).pushReplacementNamed("/login"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.green[300],
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            Text("Aguarde...",textAlign: TextAlign.center,),
            SizedBox(height: 10.0),
            Align(child: CircularProgressIndicator(color: Colors.black26,))
          ],
        ),
      ),
    );
  }
}