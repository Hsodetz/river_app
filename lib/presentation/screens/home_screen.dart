import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RiverApp'),
      ),
      body: const HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        CustomTile(
          title: 'State provider', 
          subTitle: 'Un estado simple', 
          location: '/state-provider'
        ),

         CustomTile(
          title: 'Stream provider', 
          subTitle: 'Un stream', 
          location: '/stream-provider'
        ),
      ],
    );
  }
}

class CustomTile extends StatelessWidget {
  final String title;
  final String subTitle;
  final String location;
  const CustomTile({
    super.key, 
    required this.title, 
    required this.subTitle, 
    required this.location
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subTitle),
      trailing: const Icon(Icons.arrow_forward_ios_rounded),
      onTap: () {
        context.push(location);
      },
    );
  }
}