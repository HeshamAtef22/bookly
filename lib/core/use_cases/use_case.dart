import 'package:bookly/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class UseCase<type , Parmeter>
{
  Future<Either<Failure,type>> call([Parmeter parm]);
}