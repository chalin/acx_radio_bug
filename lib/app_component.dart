// Copyright (c) 2017, chalin. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:async';

import 'package:angular2/core.dart';
import 'package:angular2_components/angular2_components.dart';

import 'hero.dart';

@Component(
  selector: 'my-app',
  styleUrls: const ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: const [materialDirectives],
  providers: const [materialProviders],
)
class AppComponent implements OnInit {
  final List<Hero> heroes = [];
  Hero currentHero;

  void ngOnInit() => resetHeroes();

  void resetHeroes() {
    heroes.clear();
    Hero.mockHeroes.forEach((hero) => heroes.add(new Hero.copy(hero)));
    currentHero = heroes[0];
    // https://github.com/dart-lang/angular2_components/issues/61
    // Test workaround:
    Timer.run(() {currentHero = heroes[0];});
  }
}
