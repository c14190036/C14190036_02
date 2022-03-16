class Item {
  String? _id;
  String? _title;
  String? _description;
  int _price;

  Item(this._id, this._title, this._description, this._price);

  set id(String dtId) {
    _id = dtId;
  }

  set title(String dtTitle) {
    _title = dtTitle;
  }

  set description(String dtDescription) {
    _description = dtDescription;
  }

  set price(int dtPrice) {
    _price = dtPrice;
  }

  String get id => this._id!;
  String get title => this._title!;
  String get description => this._description!;
  int get price => this._price;
}
