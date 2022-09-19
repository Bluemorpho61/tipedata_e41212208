import 'dart:io';

import 'package:test/test.dart';

void main(List<String> args) {
  String? nama;
  String? peran;
  stdout.writeln("Silahkan masukkan nama anda..");
  nama = stdin.readLineSync();
  if (nama!.isEmpty) {
    print("ERROR: Nama harus diisi!");
    exit(exitCode);
  }
  stdout.writeln(
      "Hai $nama! pilih salah satu dari beberapa peran yang telah tersedia ( pilih nomor saja )");
  stdout.writeln("1. Penyihir");
  stdout.writeln("2. Guard");
  stdout.writeln("3. Werewolf");
  peran = stdin.readLineSync();
  if (peran!.isEmpty) {
    print("ERROR: Anda tidak memilih peran!");
  }

  switch (peran) {
    case "1":
      print(
          "Halo penyihir $nama, kamu dapat melihat siapa yang menjadi werewolf");
      break;
    case "2":
      print(
          "Halo guard $nama, kamu akan membantu temanmu dari serangan werewolf");
      break;
    case "3":
      print("Halo werewolf $nama, kamu akan memakan mangsa setiap malam");
      break;
    default:
      print("Silahkan pilih peran yang telah tersedia!");
      break;
  }
}
