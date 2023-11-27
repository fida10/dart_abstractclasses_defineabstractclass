/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/abstractclasses_defineabstractclass_base.dart';

/*
Practice Question 1: Define Abstract Class

Question:

Create an abstract class named DataSource.

The class should have two abstract methods: writeData(String data) and readData().

Implement print statements inside these methods (even though they are abstract).
 */

/*
Practice Question 2: Implement Concrete Classes

Question:

Extend the DataSource class with two concrete classes named FileStorage and MemoryStorage.

Implement the writeData(String data) and readData() methods in these classes.
 */

abstract class DataSource {
  void writeData(String data) {
    print("This will write some data: $data");
  }

  void readData() {
    print("This will read data");
  }

  //void needsToBeImplemented();
}

class FileStorage extends DataSource {
  String? data;

  @override
  void writeData(String data) {
    print("Data written to file: $data");
    this.data = data;
  }

  @override
  void readData() {
    print("Data written to file: $data");
  }
}

class MemoryStorage extends DataSource {
  String? data;
  
  @override
  void writeData(String data) {
    print("Data stored in memory: $data");
    this.data = data;
  }

  @override
  void readData() {
    print("Data stored in memory: $data");
  }
}
