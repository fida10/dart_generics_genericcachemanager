import 'package:generics_genericcachemanager/src/generics_genericcachemanager_base.dart';

void main() {
  final cache = Cache();
  cache.store("Doll", "1234");
  cache.store("Mango", "5638");
  cache.store("Car", "9938");
  cache.store("Cup", "5773");

  print(cache.retrieve("5638"));
}
