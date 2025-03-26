import '../../../shared/domain/models/hero_model.dart';

String calculateWinner(HeroModel hero1, HeroModel hero2) {
  int calculateTotalPower(HeroModel hero) {
    return hero.powerstats.values.fold(0, (sum, value) => sum + value);
  }

  int hero1TotalPower = calculateTotalPower(hero1);
  int hero2TotalPower = calculateTotalPower(hero2);

  String winner;
  if (hero1TotalPower > hero2TotalPower) {
    winner = hero1.name;
  } else if (hero2TotalPower > hero1TotalPower) {
    winner = hero2.name;
  } else {
    winner = "Empate";
  }

  return winner;
}
