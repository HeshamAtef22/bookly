import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/use_cases/use_case.dart';
import 'package:bookly/features/home/domain/entities/book_entitiy.dart';
import 'package:bookly/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class fetchNewestSellers extends UseCase<List<BookEntity>, void> {
  final HomeRepo homeRepo;
  fetchNewestSellers(this.homeRepo);
  @override
  Future<Either<Failure, List<BookEntity>>> call([void parm]) async {
    return await homeRepo.fetchNewestSellers();
  }
}
