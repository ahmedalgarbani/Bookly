import 'package:Bookly/Features/Home/Data/models/book_model/Repo/home_repo.dart';
import 'package:Bookly/Features/Home/Data/models/book_model/book.dart';
import 'package:Bookly/core/api_services.dart';
import 'package:Bookly/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

class HomeRepoimp implements HomeRepo {
  final ApiServices apiServices;
  HomeRepoimp(this.apiServices);

  @override
  Future<Either<Failure, List<Book>>> fetchNewsBooks() async {
    try {
      var data = await apiServices.get(
          endPoint:
              "volumes?q=subject:Programming&sorting=newest&Filtering=free-ebooks");
      List<Book> books = [];
      for (var item in data['items']) {
        books.add(Book.fromJson(item));
      }
      return Right(books);
    } catch (ex) {
    
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<Book>>> fetchFeaturedBooks() {}
}
