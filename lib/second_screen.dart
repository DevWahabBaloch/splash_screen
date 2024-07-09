import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void closingDialog() {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Are you sure you want to close?'),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                SystemNavigator.pop();
              },
              child: Text('Yes, close'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('No'),
            ),
          ],
        ),
      );
    }

    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        // if (didPop) return;
        closingDialog();
      },
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: ElevatedButton(
                onPressed: () {
                  closingDialog();
                },
                child: Text('EXIT'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
