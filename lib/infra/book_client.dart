import 'package:issyosan_factory/domains/baby/book.dart';
import 'package:issyosan_factory/domains/baby/book_repository.dart';

class BookClient implements BookRepository {
  @override
  List<Book> list() {
    return [
      Book(1, 'Door', 8, DateTime(2020, 05, 30, 0, 0, 0), isPaid: true),
      Book(2, 'Chick', 8, DateTime(2020, 05, 30, 0, 0, 0), isPaid: false),
      Book(3, 'Balloon', 8, DateTime(2020, 05, 30, 0, 0, 0), isPaid: false),
      Book(4, 'Umbrella', 8, DateTime(2020, 05, 30, 0, 0, 0), isPaid: false),
    ];
  }

  @override
  Book get() {
    return Book(1, 'Door', 8, DateTime(2020, 05, 30, 0, 0, 0), isPaid: true);
  }
}
