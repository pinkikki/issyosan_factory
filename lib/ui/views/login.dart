import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:issyosan_factory/ui/widget/space.dart';

class LoginView extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 150,
                child: Image.asset('assets/images/title.png'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'mail address'),
                controller: emailController,
              ),
              verticalSpaceSmall,
              TextFormField(
                decoration: const InputDecoration(labelText: 'password'),
                controller: passwordController,
              ),
              verticalSpaceMedium,
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FlatButton(
                    child: const Text('login'),
                    onPressed: () {
                      print('emal_address=[${emailController.value}].');
                    },
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
