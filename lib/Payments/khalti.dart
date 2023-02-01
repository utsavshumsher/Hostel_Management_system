import 'package:flutter/material.dart';

class khalti extends StatefulWidget {
  const khalti({Key? key}) : super(key: key);

  @override
  State<khalti> createState() => _khaltiState();
}

class _khaltiState extends State<khalti> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(),
          TextFormField(),
          ElevatedButton(onPressed: (){},
              child: Text("Make Payment"),
          )
        ],
      ),
    );
  }
}
