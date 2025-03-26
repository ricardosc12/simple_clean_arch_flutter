import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/listing/providers/calculateWinner.dart';
import '../../../../../shared/domain/models/hero_model.dart';
import '../widget/widget_hero.dart';

void openBattleBox(BuildContext context, HeroModel hero1, HeroModel hero2) {
  showDialog(
    context: context,
    builder:
        (context) => AlertDialog(
          title: Text('Winner: ' + calculateWinner(hero1, hero2)),
          content: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              // Herói 1
              DetailHero(hero1),
              DetailPowerstatsHero(hero1),

              SizedBox(width: 40),

              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Intelligence'),
                  Text('Strength'),
                  Text('Speed'),
                  Text('Durability'),
                  Text('Power'),
                  Text('Combat'),
                ],
              ),

              SizedBox(width: 40),

              // Herói 2
              DetailPowerstatsHero(hero2),
              DetailHero(hero2),
            ],
          ),
        ),
  );
}