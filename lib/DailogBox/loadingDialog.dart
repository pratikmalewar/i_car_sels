import 'package:flutter/material.dart';
import 'package:i_car_sels/widgets/loddingWidget.dart';

class LoadingAlertDialog extends StatelessWidget {
  final String message;

  const LoadingAlertDialog({required Key key, required this.message})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      key: key,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          circularProgress(),
          SizedBox(
            height: 10,
          ),
          Text("Authentication, please wait...")
        ],
      ),
    );
  }
}
