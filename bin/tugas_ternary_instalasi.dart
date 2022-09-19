import 'dart:io';

void main(List<String> args) {
  stdout.writeln("Apakah anda ingin menginstall aplikasi ini? y/t");
  var input = stdin.readLineSync();
  (input == "y")
      ? print("anda akan menginstall aplikasi dart")
      : (input == "t")
          ? print("aborted")
          : print("Error");
}
