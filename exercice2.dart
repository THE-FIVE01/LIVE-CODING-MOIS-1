/*
EXERCIE 2 :
Bob est un adolescent nonchalant. Dans la conversation, ses réponses sont très limitées.
Bob répond «Bien sûr». si vous lui posez une question, telle que "Comment vas-tu?".
Il répond "Whoa, détends-toi!" si vous CRIEZ SUR LUI (dans toutes les capitales).
Il répond "Calme-toi, je sais ce que je fais!" si vous lui criez une question.
Il dit «Très bien. Être comme ça!' si vous vous adressez à lui sans rien dire.
Il répond "Peu importe." à autre chose.
Le partenaire conversationnel de Bob est un puriste en matière de communication 
écrite et suit toujours les règles normales concernant la ponctuation des phrases en français. */

import 'dart:io';

void main() {
  String conversation, r1, r2, r3, r4, r5;
  bool q = true;

  r1 = "Bien-sûr";
  r2 = "Whoa, détends-toi!";
  r3 = "Calme-toi, je sais ce que je fais!";
  r4 = "Très bien.Être comme ça!";
  r5 = "Peu importe.";

  while (q) {
    print("Parlez a bob");
    conversation = stdin.readLineSync();

    switch (conversation) {
      case "Comment vas-tu?":
        print(r1);
        break;
      case "Criez sur Bob":
        print(r2);
        break;
      case "Criez une question":
        print(r3);
        break;
      case "":
        print(r4);
        break;
      default:
        print(r5);
    }
  }
}
