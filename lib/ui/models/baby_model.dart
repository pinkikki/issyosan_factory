import 'package:flutter/cupertino.dart';
import 'package:issyosan_factory/domains/baby/book.dart';
import 'package:issyosan_factory/domains/baby/book_repository.dart';
import 'package:issyosan_factory/locator.dart';

class BabyViewModel extends ChangeNotifier {
  final BookRepository repo = locator.get<BookRepository>();

  List<Book> _books = [];

  List<Book> get books => _books;

  Future<void> init() async {
    _books = await repo.list();
    debugPrint(_books.length.toString());
    notifyListeners();
  }

  Future<void> refresh() async {
    _books = await repo.list();
    debugPrint(_books.length.toString());
    notifyListeners();
  }
}
