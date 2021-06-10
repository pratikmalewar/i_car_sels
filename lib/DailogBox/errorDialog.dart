import 'package:flutter/material.dart';

import '../authenticationScreen.dart';

class ErrorAlertDialog extends StatelessWidget {
  final String message;

  const ErrorAlertDialog({required Key key, required this.message})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      key: key,
      content: Text(message),
      actions: [
        ElevatedButton(
          onPressed: () {
            Route newRoute =
                MaterialPageRoute(builder: (context) => AuthenticationScreen());
        Navigator.pushReplacement(context, newRoute);
          },
          child: Center(
            child: Text("Ok"),
          ),
        )
      ],
    );
  }
}
