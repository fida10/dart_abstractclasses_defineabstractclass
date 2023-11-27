import 'package:abstractclasses_defineabstractclass/abstractclasses_defineabstractclass.dart';
import 'package:test/test.dart';

void main() {
  group('Testing Concrete Classes FileStorage and MemoryStorage:', () {

    test('FileStorage should implement DataSource', () {
      expect(FileStorage(), isA<DataSource>());
    });

    test('MemoryStorage should implement DataSource', () {
      expect(MemoryStorage(), isA<DataSource>());
    });

    test('FileStorage should correctly write and read data', () {
      var testData = 'file test data';
      final x = FileStorage();
      x.writeData(testData);
      expect(
          () => x.readData(), prints('Data written to file: $testData\n'));
    });

    test('MemoryStorage should correctly write and read data', () {
      var testData = 'memory test data';
      final y = MemoryStorage();
      y.writeData(testData);
      expect(
          () => y.readData(), prints('Data stored in memory: $testData\n'));
    });
  });
}


