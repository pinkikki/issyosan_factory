import 'book.dart';

abstract class BookRepository {
  Book get();

  List<Book> list();
}
