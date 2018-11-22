import 'hero.dart';
import 'mock_heroes.dart';
import 'dart:async';

class HeroService {
  Future<List<Hero>> getAll() async => mockHeroes;
  Future<List<Hero>> getAllSlow() {
    return Future.delayed(Duration(seconds: 500000), getAll);
  }

  Future<Hero> get (int id) async => (await getAll()).firstWhere((hero) => hero.id == id);
}