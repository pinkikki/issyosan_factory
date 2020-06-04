import 'package:flutter/cupertino.dart';
import 'package:issyosan_factory/domains/baby/book.dart';
import 'package:issyosan_factory/domains/baby/book_repository.dart';
import 'package:issyosan_factory/locator.dart';
import 'package:logging/logging.dart';

class BabyViewModel extends ChangeNotifier {
  Logger logger = Logger('BabyViewModel');
  final BookRepository repo = locator.get<BookRepository>();

  List<Book> _books = [];

  List<Book> get books => _books;

  Future<void> init() async {
    _books = await repo.list();
    logger.fine('bookCount=[${_books.length.toString()}].');
    notifyListeners();
  }

  Future<void> refresh() async {
    _books = await repo.list();
    logger.fine('bookCount=[${_books.length.toString()}].');
    notifyListeners();
  }

  Future<void> swap(int oldIndex, int newIndex) async {
    final removed = _books.removeAt(oldIndex);
    _books.insert(oldIndex < newIndex ? newIndex - 1 : newIndex, removed);
    notifyListeners();
  }

  Future<void> removeAt(int index) async {
    final book = _books.removeAt(index);
    await repo.remove(book);
    notifyListeners();
  }
}
