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

abstract class DataSource {
  void writeData(String data){
    print("This will write some data: $data");
  }

  void readData(){
    print("This will read data");
  }

  void needsToBeImplemented();
}