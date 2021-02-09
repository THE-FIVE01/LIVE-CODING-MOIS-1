import "dart:io";

void main() {
  var regex = RegExp(r"[a-zA-Z']+");
  Match mot; //variables temporaires
  Iterable<Match> phrase; //tout
  int count = 0;

  print("Entrer une phrase svp : ");
  phrase = regex.allMatches(stdin.readLineSync());
  for (var mot in phrase) {
    stdout.write(mot.group(0)[0].toUpperCase());
  }
  stdout.write("\n");
}
