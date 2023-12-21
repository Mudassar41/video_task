import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoadingDialog extends StatelessWidget {
  const LoadingDialog(
    this.arguments, {
    Key? key,
  }) : super(key: key);

  final String arguments;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.black,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            arguments.toString(),
            style: const TextStyle(color: Colors.white, fontSize: 12),
          ),
          const CircularProgressIndicator(),
        ],
      ),
    );
  }

  void show(BuildContext context) {
    showCupertinoDialog(
      context: context,
      builder: (context) => this,
    );
  }
}
