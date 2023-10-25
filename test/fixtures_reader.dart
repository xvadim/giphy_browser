import 'dart:convert';
import 'dart:io';

// Borrowed and idea from https://github.com/Kiruel/retrofit_clean_architecture

String _fixture(String name, String path) =>
    File('$path$name').readAsStringSync();

extension Fixture on String {
  Map<String, dynamic> toFixture({String path = 'test/fixtures/'}) =>
      json.decode(_fixture(this, path)) as Map<String, dynamic>;
}
