import 'item.dart';

class CompactDisk extends Item {
  String? _artist;

  CompactDisk(
      String? id, String? title, String? description, int price, String artist)
      : super(id, title, description, price) {
    this._artist = artist;
  }

  set artist(String dtArtist) {
    _artist = dtArtist;
  }

  String get artist => this._artist!;
}
