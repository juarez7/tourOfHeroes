import 'package:angular/angular.dart';
import 'hero.dart';
import 'mock_heroes.dart';
import 'hero_component.dart';
import 'hero_service.dart';

@Component(
  selector: 'my-heroes',
  templateUrl: 'hero_list_component.html',
  styleUrls: ['hero_list_component.css'],
  directives:[coreDirectives, HeroComponent],
)
class HeroListComponent implements OnInit {
  final title = "Tour of Heroes";
  final HeroService _heroService;
  List<Hero> heroes = mockHeroes;
  Hero selected;

  HeroListComponent(this._heroService);

  void ngOnInit() => _getHeroes();

  void onSelect(Hero hero) => selected = hero;

  Future<void> _getHeroes() async {
    //_heroService.getAll().then((heroes) => this.heroes = heroes);
    //similar as above (without Future/await)
    heroes = await _heroService.getAllSlow();
  }
}
