import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

import 'hero_service.dart';
import 'dashboard_component.dart';
import 'heroes_component.dart';
import 'hero_detail_component.dart';


@Component(
  selector: 'my-app',
  template: '''
    <h1>{{title}}</h1>
    <nav>
      <a [routerLink]="['Dashboard']">Dashboard</a>
      <a [routerLink]="['Heroes']">Heroes</a>
    </nav>
    <router-outlet></router-outlet>
    ''',
  styleUrls: const ['app_component.css'],
  directives: const [
    ROUTER_DIRECTIVES
  ],
  providers: const [
    ROUTER_PROVIDERS,
    HeroService
  ]
)
@RouteConfig(const [
  const Route(path: '/dashboard', name: 'Dashboard', component: DashboardComponent, useAsDefault: true),
  const Route(path: '/heroes', name: 'Heroes', component: HeroesComponent),
  const Route(path: '/detail/:id', name: 'HeroDetail', component: HeroDetailComponent),
])
class AppComponent {
  String title = 'Tour of Heroes';
}
