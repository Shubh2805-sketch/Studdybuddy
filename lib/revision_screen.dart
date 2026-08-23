import 'package:flutter/material.dart';

class RevisionScreen extends StatelessWidget {
  const RevisionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Revision")),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          Card(child: ListTile(title: Text("Physics Revision"))),
          Card(child: ListTile(title: Text("Chemistry Revision"))),
          Card(child: ListTile(title: Text("Maths Revision"))),
        ],
      ),
    );
  }
}
