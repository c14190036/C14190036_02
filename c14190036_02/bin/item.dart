class Item {
  String? _id;
  String? _title;
  String? _description;
  int _price = 0;
  int _lokasi = 0;

  Item(this._id, this._title, this._description, this._price, this._lokasi);

  set id(String temp) {
    _id = temp;
  }

  set title(String temp) {
    _title = temp;
  }

  set description(String temp) {
    _description = temp;
  }

  set price(int temp) {
    _price = temp;
  }

  set lokasi(int temp) {
    _lokasi = temp;
  }

  String get id => this._id!;
  String get title => this._title!;
  String get description => this._description!;
  int get price => this._price;
  int get lokasi => this._lokasi;
}
