import 'dart:async';

import 'package:dartz/dartz.dart';

import 'models/failure_model.dart';
import 'models/student_model.dart';

class Example {
  final Repository repository;

  Example() : repository = Repository();

  Future<List<String>> getNamesStudents() {
    return repository.getNamesStudents().then(
          (value) => value.fold(
            (left) => throw (left.message),
            (right) => right.data,
          ),
        );
  }
}

class Repository {
  Future<Either<FailureModel, ResponseModel>> getNamesStudents() async {
    try {
      return Future.delayed(
        const Duration(milliseconds: 500),
        () {
          //fake result request
          ResponseModel result = ResponseModel(["Michael", "Brayan", "Andres"]);

          // throw ("Error!!!");

          return right(result);
        },
      );
    } catch (e) {
      return left(FailureModel(e.toString()));
    }
  }
}
