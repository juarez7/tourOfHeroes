import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'src/hero.dart';
import 'src/mock_heroes.dart';
import 'hero_component.dart';

@Component(
  selector: 'app-component',
  templateUrl: 'app_component.html',
  styleUrls: ['app_component.css'],
  directives:[coreDirectives, HeroComponent]
)
class AppComponent {
  final title = "Tour of Heroes";
  List<Hero> heroes = mockHeroes;
  Hero selected;

  void onSelect(Hero hero) => selected = hero;
}
