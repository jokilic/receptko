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

String get randomCuisine {
  List<Cuisine> cuisines = List.from(Cuisine.values);
  Cuisine randomCuisine = (cuisines..shuffle()).first;
  String randomCuisineString = randomCuisine.value();

  if (randomCuisineString == 'easternEuropean')
    randomCuisineString = 'eastern_european';
  if (randomCuisineString == 'latinAmerican')
    randomCuisineString = 'latin_american';
  if (randomCuisineString == 'middleEastern')
    randomCuisineString = 'middle_eastern';

  return randomCuisineString;
}
