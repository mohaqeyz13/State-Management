import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/test_provider.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen Two"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () => Navigator.pop(context), child: Text("Back")),
            SizedBox(
              height: 10,
            ),
            Text('Number waa: ${context.watch<TestProvider>().count}'),
          ],
        ),
      ),
    );
  }
}
