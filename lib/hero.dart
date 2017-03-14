// #docregion
class Hero {
  static int _nextId = 1;

  static final List<Hero> mockHeroes = [
    new Hero(null, 'Mr. Nice', 'happy'),
    new Hero(null, 'Windstorm', 'confused'),
    new Hero(null, 'Magneta')
  ];

  int id;
  String name;
  String emotion;

  Hero(int _id,
      [this.name, this.emotion])
      : this.id = _id ?? _nextId++;

  factory Hero.copy(Hero h) =>
      new Hero(h.id, h.name, h.emotion);
}
