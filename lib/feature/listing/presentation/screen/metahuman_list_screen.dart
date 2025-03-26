import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/utils/search.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../shared/domain/models/hero_model.dart';
import '../../../../../../shared/presentation/layout/app_bar.dart';
import '../../../../shared/presentation/layout/toast.dart';
import '../../providers/metahuman_provider.dart';
import 'battle_hero.dart';
import 'details_hero.dart';

final searchProvider = StateProvider<String>((ref) => "");
final selectedHeroesProvider = StateProvider<List<HeroModel>>((ref) => []);

@RoutePage()
class MetahumanListScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchQuery = ref.watch(searchProvider);
    final metahumanAsyncValue = ref.watch(metahumanListProvider);
    final selectedHeroes = ref.watch(selectedHeroesProvider);

    return Scaffold(
      appBar: DefaultAppBar(),
      body: Column(
        children: [
          search("Procurar herói", ref),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    if (selectedHeroes.length == 2) {
                      openBattleBox(
                        context,
                        selectedHeroes[0],
                        selectedHeroes[1],
                      );
                    } else {
                      ToastHelper.error(
                        "Para batalha são necessários 2 heróis",
                        id: '',
                      );
                    }
                  },
                  child: Text("Batalha"),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (selectedHeroes.length == 1) {
                      openDetailBox(context, selectedHeroes[0]);
                    } else {
                      ToastHelper.error(
                        "Os detalhes são apenas de um herói",
                        id: '',
                      );
                    }
                  },
                  child: Text("Detalhes"),
                ),
              ],
            ),
          ),

          Expanded(
            child: metahumanAsyncValue.when(
              data: (heroes) {
                final filteredHeroes =
                    heroes
                        .where(
                          (hero) => hero.name.toLowerCase().contains(
                            searchQuery.toLowerCase(),
                          ),
                        )
                        .toList();

                if (filteredHeroes.isEmpty) {
                  return Center(child: Text("Nenhum herói encontrado"));
                }

                return ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  itemCount: filteredHeroes.length,
                  itemBuilder: (context, index) {
                    final hero = filteredHeroes[index];
                    final isSelected = selectedHeroes.contains(hero);

                    return GestureDetector(
                      onTap: () {
                        if (isSelected) {
                          ref
                              .read(selectedHeroesProvider.notifier)
                              .state = List.from(selectedHeroes)..remove(hero);
                        } else if (selectedHeroes.length < 2) {
                          ref
                              .read(selectedHeroesProvider.notifier)
                              .state = List.from(selectedHeroes)..add(hero);
                        }
                      },

                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        color:
                            isSelected
                                ? Colors.greenAccent.shade100
                                : Colors.white,
                        child: ListTile(
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 5,
                          ),

                          leading: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.network(
                              hero.imageUrl,
                              width: 60,
                              height: 110,
                              fit: BoxFit.fill,
                            ),
                          ),
                          title: Text(
                            hero.name,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          trailing: Icon(
                            isSelected
                                ? Icons.check_circle
                                : Icons.circle_outlined,
                            color: isSelected ? Colors.green : Colors.grey,
                            size: 25,
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
              loading: () => Center(child: CircularProgressIndicator()),
              error:
                  (err, stack) =>
                      Center(child: Text('Erro ao carregar heróis')),
            ),
          ),
        ],
      ),
    );
  }
}
