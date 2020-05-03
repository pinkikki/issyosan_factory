import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:issyosan_factory/domains/baby/book.dart';
import 'package:issyosan_factory/domains/baby/book_repository.dart';

@immutable
class BookClient implements BookRepository {
  const BookClient({@required this.endpoint});

  static const String resource = '_baby_book';
  final String endpoint;

  @override
  Future<List<Book>> list() async {
    final response = await http.get('$endpoint$resource');

    if (response.statusCode == 200) {
      final json = (await jsonDecode(response.body) as List)
          .cast<Map<String, dynamic>>();

      final list = json.map(_toBook).toList();
      return list;
    } else {
      throw Exception('Failed to load books');
    }
  }

  @override
  Future<Book> get(int id) async {
    final response = await http.get('$endpoint$resource/$id');

    if (response.statusCode == 200) {
      final json = await jsonDecode(response.body) as Map<String, dynamic>;
      return _toBook(json);
    } else {
      throw Exception('Failed to load book. id=[${id.toString()}]');
    }
  }

  Book _toBook(Map<String, dynamic> json) {
    return Book(
      id: json['id'] as String,
      name: json['name'] as String,
      pageCount: json['pageCount'] as int,
      released: DateTime.parse(json['released'] as String),
      isPaid: json['isPaid'] as bool,
    );
  }
}
