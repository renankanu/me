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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      child: Row(
                        children: [
                          Text('Total de commits: '),
                          Text(
                            result.data!['viewer']['contributionsCollection']
                                    ['totalCommitContributions']
                                .toString(),
                          ),
                          Text(
                            result.data!['viewer']['repositories']['totalCount']
                                .toString(),
                          ),
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
