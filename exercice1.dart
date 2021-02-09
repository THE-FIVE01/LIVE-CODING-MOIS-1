/* 
EXERCICE 1 :
Déterminez si un triangle est équilatéral, isocèle ou scalène.

Un triangle équilatéral a les trois côtés de la même longueur.

Un triangle isocèle a au moins deux côtés de la même longueur. 
(Il est parfois spécifié comme ayant exactement deux côtés 
de la même longueur, mais pour les besoins de cet exercice, nous 
en dirons au moins deux.)

Un triangle scalène a tous les côtés de différentes longueurs. */

import 'dart:io';

void main() {
  int a, b, c;
  bool pc, dc, te, ti, ts, td;

  print(
      "Entrer les trois côtés du triangle pour déterminer si c'est un triangle => équilatéral, isocèle ou scalène");
  print(
      "=============================================================================");

  print("1- Entrer la longueur du 1er côté du triangle (a) : ");
  a = int.parse(stdin.readLineSync());
  print("============================================");
  print("2- Entrer la longueur du 2ième côté du triangle (b) : ");
  b = int.parse(stdin.readLineSync());
  print("============================================");
  print("3- Entrer la longueur du 3ième côté du triangle (c) : ");
  c = int.parse(stdin.readLineSync());

  pc = (a > 0 && b > 0 && c > 0);
  dc = ((a + b >= c) || (b + c >= a) || (a + c >= b));

  //te = (a == b && b == c);
  ti = (a == b && b != c) || (a == c && c != b) || (b == c && c != a);
  ts = (a != b && b != c && c != a);
  td = ((a + b == c) || (b + c == a) || (a + c == b));

  if (pc && dc) {
    print("============== Nous avons un triangle ==============>");
    
    if (ti) {
      print("Ce triangle est un triangle isocèle.");
    } else if (ts) {
      print("Ce triangle est un triangle scalène.");
    } else if (td) {
      print("Ce triangle est un triangle dégénéré.");
    } else {
      print("Ce triangle est un triangle équilatérale.");
    }
  } else {
    print(
        "Désoler les longeur du triangle doivent être supérieur à 0 et la somme des longueurs de deux côtés > ou = 0.");
  }
}
