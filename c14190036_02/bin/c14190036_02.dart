import 'dart:io';
import 'f_cd.dart';
import 'fbuku.dart';

void main(List<String> arguments) {
  int choice = 0;
  List Item = [];

  String? id;
  String? title;
  String? descreption;
  int price = 0;
  int lokasi = 0;
  int? ISBN;
  String? author;
  String? artist;
  String? Country;

  do {
    print('1. Tambah Barang Baru');
    print('2. Tampilkan Sebuah Barang');
    print('3. Pindah Barang');
    print('4. Tampilkan Seluruh Barang');
    print('5. Menampilkan n-data barang pertama dengan kisaran harga');
    print('6. Cari item');
    print('0. Exit');
    stdout.write('Pilih Menu : ');
    choice = int.parse(stdin.readLineSync()!);

    if (choice == 1) {
      int pil = 0;
      print('1. Compact Disk');
      print('2. Buku Biasa');
      print('3. Buku Travel Guide');
      stdout.write('Pilih yang ingin ditambah : ');
      pil = int.parse(stdin.readLineSync()!);

      if (pil == 1) {
        stdout.write('Id : ');
        id = stdin.readLineSync();

        stdout.write('Title : ');
        title = stdin.readLineSync();

        stdout.write('Description : ');
        descreption = stdin.readLineSync();

        stdout.write('Price : ');
        price = int.parse(stdin.readLineSync()!);

        stdout.write('Lokasi (nomor) : ');
        lokasi = int.parse(stdin.readLineSync()!);

        stdout.write('Artist : ');
        artist = stdin.readLineSync();

        Item.add(CompactDisk(id, title, descreption, price, lokasi, artist));
      } else if (pil == 2) {
        stdout.write('Id : ');
        id = stdin.readLineSync();

        stdout.write('Title : ');
        title = stdin.readLineSync();

        stdout.write('Description : ');
        descreption = stdin.readLineSync();

        stdout.write('Price : ');
        price = int.parse(stdin.readLineSync()!);

        stdout.write('Lokasi (nomor) : ');
        lokasi = int.parse(stdin.readLineSync()!);

        stdout.write('ISBN : ');
        ISBN = int.parse(stdin.readLineSync()!);

        stdout.write('Author : ');
        author = stdin.readLineSync();

        Item.add(
            BukuBiasa(id, title, descreption, price, lokasi, ISBN, author));
      } else if (pil == 3) {
        stdout.write('Id : ');
        id = stdin.readLineSync();

        stdout.write('Title : ');
        title = stdin.readLineSync();

        stdout.write('Description : ');
        descreption = stdin.readLineSync();

        stdout.write('Price : ');
        price = int.parse(stdin.readLineSync()!);

        stdout.write('Lokasi (nomor) : ');
        lokasi = int.parse(stdin.readLineSync()!);

        stdout.write('ISBN : ');
        ISBN = int.parse(stdin.readLineSync()!);

        stdout.write('Author : ');
        author = stdin.readLineSync();

        stdout.write('Country : ');
        Country = stdin.readLineSync();
        Item.add(BukuTravel(
            id, title, descreption, price, lokasi, ISBN, author, Country));
      }
    } else if (choice == 2) {
      int posisi;
      stdout.write('Pilih posisi barang : ');
      posisi = int.parse(stdin.readLineSync()!);

      print(Item[posisi - 1]);
    } else if (choice == 3) {
      int posisi;

      stdout.write('Input Lokasi barang yang ingin dipindah : ');
      posisi = int.parse(stdin.readLineSync()!);

      stdout.write('Input Lokasi barang yang ingin dituju : ');
      lokasi = int.parse(stdin.readLineSync()!);

      Item[posisi] = lokasi;
    } else if (choice == 4) {
      int input;
      print('1. Compact Disk');
      print('2. Buku Biasa');
      print('3. Buku Travel Guide');
      stdout.write('Masukan Lokasi yang ingin ditampilkan : ');
      input = int.parse(stdin.readLineSync()!);

      for (int i = 0; i < Item.length; i++) {
        print(Item[i]);
      }
    } else if (choice == 5) {
      int min;
      int max;
      int banyakData;

      stdout.write('input banyak data yang ingin ditampilkan : ');
      banyakData = int.parse(stdin.readLineSync()!);

      stdout.write('Input batas bawah harga buku : ');
      min = int.parse(stdin.readLineSync()!);

      stdout.write('Input batas atas harga buku : ');
      max = int.parse(stdin.readLineSync()!);

      for (int i = 0; i < banyakData; i++) {
        if (Item[i].price >= min) {
          if (Item[i].price <= max) {
            print(Item[i]);
          }
        }
      }
    } else if (choice == 6) {
      String? inputTitle;
      stdout.write('Masukan Title yang ingin dicari : ');
      inputTitle = stdin.readLineSync();

      for (int i = 0; i < Item.length; i++) {
        if (Item[i].length == inputTitle) {
          print(Item[i]);
        }
      }
    }
  } while (choice != 0);
}
