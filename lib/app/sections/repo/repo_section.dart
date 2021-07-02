import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:me/app/core/graphql_query.dart';
import 'package:me/app/widgets/base_section_container.dart';
import 'package:me/app/widgets/title_section.dart';
import 'package:me/generated/locales.g.dart';

import 'widgets/card_pinned.dart';

class RepoSection extends StatelessWidget {
  const RepoSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseSectionContainer(
      child: Column(
        children: [
          TitleSection(titleSection: LocaleKeys.repoSection_myRepo.tr),
          SizedBox(height: 32),
          Query(
            options: QueryOptions(document: gql(Queries.pinnedRepo)),
            builder: (QueryResult result,
                {VoidCallback? refetch, FetchMore? fetchMore}) {
              if (result.hasException) {
                return Text(result.exception.toString());
              }
              if (result.isLoading) {
                return Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 60),
                    child: Text(
                      LocaleKeys.repoSection_loadRepo.tr,
                      style: TextStyle(
                        fontSize: 22,
                        color: Get.theme.buttonColor,
                      ),
                    ),
                  ),
                );
              }
              List repositoriesPinned =
                  result.data!['viewer']['pinnedItems']['nodes'];
              return Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Column(
                  children: [
                    Text(LocaleKeys.repoSection_favoriteRepo.tr),
                    Container(
                      height: 1,
                      color: Colors.red,
                      width: 100,
                    ),
                    SizedBox(height: 16),
                    Wrap(
                      runSpacing: 20,
                      spacing: 20,
                      children: repositoriesPinned.map(
                        (repo) {
                          var index = repositoriesPinned.indexOf(repo);
                          return CardPinned(
                            repo: repositoriesPinned[index],
                          );
                        },
                      ).toList(),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 6,
                        vertical: 16,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              Text(
                                LocaleKeys.repoSection_totalCommits.tr,
                                style: Get.textTheme.headline4!
                                    .copyWith(fontSize: 16),
                              ),
                              Text(
                                result.data!['viewer']
                                        ['contributionsCollection']
                                        ['totalCommitContributions']
                                    .toString(),
                                style: Get.textTheme.headline5!
                                    .copyWith(fontSize: 16),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                LocaleKeys.repoSection_totalRepo.tr,
                                style: Get.textTheme.headline4!
                                    .copyWith(fontSize: 16),
                              ),
                              Text(
                                result.data!['viewer']['repositories']
                                        ['totalCount']
                                    .toString(),
                                style: Get.textTheme.headline5!
                                    .copyWith(fontSize: 16),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
