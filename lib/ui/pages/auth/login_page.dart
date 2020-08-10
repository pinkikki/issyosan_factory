import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:issyosan_factory/services/navigation_service.dart';
import 'package:issyosan_factory/ui/widget/space.dart';

import '../../../locator.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final _navigationService = locator.get<NavigationService>();

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
                      _navigationService.navigateReplacementTo('books');
                    },
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
