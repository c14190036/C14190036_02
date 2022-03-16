import 'dart:developer';

import 'item.dart';

class BukuBiasa extends Item {
  String? _ISBN;
  String? _author;
  BukuBiasa(String? id, String? title, String? description, int price,
      String ISBN, String author)
      : super(id, title, description, price) {
    this._ISBN = ISBN;
    this._author = author;
  }

  set ISBN(String dtISBN) {
    _ISBN = dtISBN;
  }

  set author(String dtAuthor) {
    _author = dtAuthor;
  }

  String get ISBN => this._ISBN!;
  String get author => this._author!;
}

class BukuTravel extends BukuBiasa {
  String? _country;

  BukuTravel(String? id, String? title, String? description, int price,
      String ISBN, String author, String country)
      : super(id, title, description, price, ISBN, author) {
    this._country = country;
  }

  set country(String dtCountry) {
    _country = dtCountry;
  }

  String get country => this._country!;
}
