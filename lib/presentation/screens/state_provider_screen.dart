import 'package:flutter/material.dart';

class StateProviderScreen extends StatelessWidget {
  const StateProviderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("State Provider Screen"),
      ),
      body: const StateProviderView(),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          
        },
        child: const Icon(Icons.refresh_rounded),
      ),
    );
  }
}

class StateProviderView extends StatelessWidget {
  const StateProviderView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('holis'),);
  }
}