import 'package:Bookly/Features/Home/Data/models/book_model/Repo/home_repo.dart';
import 'package:Bookly/Features/Home/Data/models/book_model/book.dart';
import 'package:Bookly/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

class HomeRepoimp implements HomeRepo{
  @override
  Future<Either<Failure, List<Book>>> fetchAllSellerBooks() {
    
  }

  @override
  Future<Either<Failure, List<Book>>> fetchFeaturedBooks() {
   
  }
}