import 'package:Bookly/Features/Home/Data/models/book_model/book.dart';
import 'package:Bookly/core/errors/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

abstract class HomeRepo {
  Future<Either<Failure,List<Book>>> fetchAllSellerBooks();
  Future<Either<Failure,List<Book>>> fetchFeaturedBooks();
}
