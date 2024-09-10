import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_app/presentation/providers/stream_provider.dart';

class StreamScreen extends ConsumerWidget {
  const StreamScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    
    final namesAsync = ref.watch(streamNamesProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Stream provider'),
      ),
      body: namesAsync.when(
      data: (data) => ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(data[index]),
          );
        },
      ), 
      error: (error, stackTrace) => Text('Error: $error'), 
      loading: () => const Center(child: CircularProgressIndicator(),),
    ),
    );
  }
}
