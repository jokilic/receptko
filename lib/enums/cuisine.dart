enum Cuisine {
  african,
  american,
  british,
  cajun,
  caribbean,
  chinese,
  easternEuropean,
  european,
  french,
  german,
  greek,
  indian,
  irish,
  italian,
  japanese,
  jewish,
  korean,
  latinAmerican,
  mediterranean,
  mexican,
  middleEastern,
  nordic,
  southern,
  spanish,
  thai,
  vietnamese,
}

extension ParseToString on Cuisine {
  String value() => toString().split('.').last.toLowerCase();
}

Cuisine get randomCuisine {
  List<Cuisine> cuisines = List.from(Cuisine.values);
  return (cuisines..shuffle()).first;
}
