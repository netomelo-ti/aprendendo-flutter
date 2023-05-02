
import 'package:aprendendo_flutter/controllers/login_controller.dart';
import 'package:flutter/material.dart';

class LoginPageAndroid extends StatefulWidget {
  const LoginPageAndroid({super.key});

  @override
  State<LoginPageAndroid> createState() => _LoginPageAndroidState();
}

class _LoginPageAndroidState extends State<LoginPageAndroid> {
  final LoginController _controller = LoginController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      backgroundColor: Colors.yellow.shade50,
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 115,
              width: 115,
              child: CircleAvatar(
                backgroundColor: Colors.green,
                child: Icon(Icons.people, size: 95),
              ),
            ),
            const SizedBox(height: 40.0,),
            TextField(
              autofocus: true,
              decoration: const InputDecoration(
                label: Text("Usuário"),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
              ),
              onChanged: _controller.setUsuario,
              
            ),
            const SizedBox(height: 10.0,),
            TextField(
              obscureText: true,
              decoration: const InputDecoration(
                label: Text("Senha"),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                )

              ),
              onChanged: _controller.setSenha,
            ),
            const SizedBox(height: 10.0,),
            ValueListenableBuilder(
              valueListenable: _controller.inLoader,
              builder: (_, inLoader, __){
                return inLoader ? const Align(alignment: Alignment.center,child: CircularProgressIndicator()) : ElevatedButton(
                  child: const Text("Logar"),
                  onPressed: (){
                    _controller.auth().then((value){
                                  if(value){
                                    Navigator.of(context).pushReplacementNamed("/home");
                                  }else{
                                    ScaffoldMessenger.of(context).removeCurrentSnackBar();
                                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                      duration: const Duration(seconds: 5),
                                      padding: const EdgeInsets.all(14.0),
                                      content: Text('Dados Incorretos!',textAlign: TextAlign.center, style: TextStyle(
                                        color: Colors.yellow,
                                        fontWeight: FontWeight.bold,
                                        fontSize: MediaQuery.of(context).size.height * .02
                                      ),),
                                      backgroundColor: Colors.red,
                                    ),);

                                  }
                                },);
                  },);
              },
            ),
          ],
            
        ),
      ),
    );
  }
}
