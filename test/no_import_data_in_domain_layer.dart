import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:glob/glob.dart';
import 'package:glob/list_local_fs.dart';

void main() {
  test('No import with /data/ in path is present in domain layer', () {
    // Define the pattern to match all Dart files in the domain layer
    final domainFiles = Glob('lib/domain/**/*.dart');

    // Iterate over each file in the domain layer
    for (var entity in domainFiles.listSync()) {
      if (entity is File) {
        final lines = (entity as File).readAsLinesSync();
        for (var line in lines) {
          // Check if the line contains an import with /data/ in its path
          if (line.startsWith('import') && line.contains('/data/')) {
            fail('File ${entity.path} contains an import with /data/: $line');
          }
        }
      }
    }
  });
  test('No import with /presentation/ in path is present in domain layer', () {
    // Define the pattern to match all Dart files in the domain layer
    final domainFiles = Glob('lib/domain/**/*.dart');

    // Iterate over each file in the domain layer
    for (var entity in domainFiles.listSync()) {
      if (entity is File) {
        final lines = (entity as File).readAsLinesSync();
        for (var line in lines) {
          // Check if the line contains an import with /data/ in its path
          if (line.startsWith('import') && line.contains('/presentation/')) {
            fail(
                'File ${entity.path} contains an import with /presentation/: $line');
          }
        }
      }
    }
  });
  test(
      'No import with /main/ in path is present in domain, presentation, data layers',
      () {
    // Define the pattern to match all Dart files in the domain layer
    final domainFiles = Glob('lib/domain/**/*.dart');
    final dataFiles = Glob('lib/data/**/*.dart');
    final presentationFiles = Glob('lib/presentation/**/*.dart');
    final allFiles = domainFiles.listSync() +
        dataFiles.listSync() +
        presentationFiles.listSync();
    // Iterate over each file in the domain layer
    for (var entity in allFiles) {
      if (entity is File) {
        final lines = (entity as File).readAsLinesSync();
        for (var line in lines) {
          // Check if the line contains an import with /data/ in its path
          if (line.startsWith('import') && line.contains('/main/')) {
            fail('File ${entity.path} contains an import with /main/: $line');
          }
        }
      }
    }
  });
}
