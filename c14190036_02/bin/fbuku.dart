import 'item.dart';

class BukuBiasa extends Item {
  int? _ISBN;
  String? _author;

  BukuBiasa(String? id, String? title, String? description, int price,
      int lokasi, int? ISBN, String? author)
      : super(id, title, description, price, lokasi) {
    this._ISBN = ISBN;
    this._author = author;
  }

  set ISBN(int temp) {
    _ISBN = temp;
  }

  set author(String temp) {
    _author = temp;
  }

  int get ISBN => this._ISBN!;
  String get author => this._author!;
}

class BukuTravel extends BukuBiasa {
  String? _country;

  BukuTravel(String? id, String? title, String? description, int price,
      int lokasi, int? ISBN, String? author, String? country)
      : super(id, title, description, price, lokasi, ISBN, author) {
    this._country = country;
  }
  set country(String temp) {
    _country = temp;
  }

  String get country => this._country!;
}
