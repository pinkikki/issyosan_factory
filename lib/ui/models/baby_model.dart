import 'package:flutter/cupertino.dart';
import 'package:issyosan_factory/domains/baby/book.dart';
import 'package:issyosan_factory/domains/baby/book_repository.dart';
import 'package:issyosan_factory/locator.dart';
import 'package:logging/logging.dart';

class BabyViewModel extends ChangeNotifier {
  Logger logger = Logger('BabyViewModel');
  final BookRepository repo = locator.get<BookRepository>();

  List<Book> _books = [];
  bool _isLoading = true;

  List<Book> get books => _books;

  bool get isLoading => _isLoading;

  Future<void> init() async {
    return fetch();
  }

  Future<void> refresh() {
    return fetch();
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

  Future<void> fetch() async {
    _isLoading = true;
    notifyListeners();
    _books = await repo.list();
    logger.fine('bookCount=[${_books.length.toString()}].');
    _isLoading = false;
    notifyListeners();
  }
}
