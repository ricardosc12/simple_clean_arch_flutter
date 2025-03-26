import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/shared/domain/models/hero_model.dart';

Widget DetailHero(HeroModel hero) => Row(
  children: <Widget>[
    Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.network(hero.imageUrl, width: 100, height: 150),
        SizedBox(height: 8),
        Text(hero.name, style: TextStyle(fontWeight: FontWeight.bold)),
      ],
    ),
    SizedBox(width: 20),
  ],
);

Widget DetailPowerstatsHero(HeroModel hero) => Row(
  children: <Widget>[
    Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(' ${hero.powerstats['intelligence']}'),
        Text('${hero.powerstats['strength']}'),
        Text('${hero.powerstats['speed']}'),
        Text('${hero.powerstats['durability']}'),
        Text(' ${hero.powerstats['power']}'),
        Text('${hero.powerstats['combat']}'),
      ],
    ),
    SizedBox(width: 20),
  ],
);
