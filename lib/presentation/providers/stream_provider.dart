

import 'package:flutter_riverpod/flutter_riverpod.dart';

final streamNamesProvider = StreamProvider<List<String>>((ref) async* {

  yield [];


  await Future.delayed(const Duration(seconds: 2));

  yield ['Helmuth'];

  await Future.delayed(const Duration(seconds: 2));

  yield ['Helmuth', 'Mila'];

  await Future.delayed(const Duration(seconds: 2));

  yield ['Helmuth', 'Mila', 'Gata'];


});