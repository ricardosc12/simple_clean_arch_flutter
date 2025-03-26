import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/listing/presentation/widget/widget_hero.dart';
import '../../../../../shared/domain/models/hero_model.dart';

void openDetailBox(BuildContext context, HeroModel hero) {
  showDialog(
    context: context,
    builder:
        (context) => AlertDialog(
          content: Row(
            children: <Widget>[
              DetailHero(hero),
              SizedBox(width: 20),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Intelligence:'),
                  Text('Strength:'),
                  Text('Speed:'),
                  Text('Durability:'),
                  Text('Power:'),
                  Text('Combat:'),
                ],
              ),
              SizedBox(width: 20),
              DetailPowerstatsHero(hero),
            ],
          ),
        ),
  );
}
