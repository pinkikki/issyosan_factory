import 'book.dart';

abstract class BookRepository {
  Future<Book> get(int id);

  Future<List<Book>> list();

  Future<void> remove(Book book);
}
