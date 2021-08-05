import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:loading_animations/loading_animations.dart';
import 'package:me/app/core/core.dart';
import 'package:me/app/core/graphql_query.dart';
import 'package:me/app/modules/home/home_controller.dart';
import 'package:me/app/widgets/base_section_container.dart';
import 'package:me/app/widgets/title_section.dart';
import 'package:me/generated/locales.g.dart';
import 'package:visibility_detector/visibility_detector.dart';

import 'widgets/card_pinned.dart';

class RepoSection extends StatelessWidget {
  RepoSection({Key? key}) : super(key: key);

  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: UniqueKey(),
      onVisibilityChanged: (visibilityInfo) {
        var visiblePercentage = visibilityInfo.visibleFraction * 100;
        if (visiblePercentage >= 75) {
          controller.setIndexSectionSelected(2);
        }
      },
      child: BaseSectionContainer(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              TitleSection(titleSection: LocaleKeys.repoSection_myRepo.tr),
              SizedBox(height: 32),
              Query(
                options: QueryOptions(document: gql(Queries.pinnedRepo)),
                builder: (QueryResult result,
                    {VoidCallback? refetch, FetchMore? fetchMore}) {
                  if (result.hasException) {
                    return Text(LocaleKeys.repoSection_oppsError.tr);
                  }
                  if (result.isLoading) {
                    return Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 60),
                        child: LoadingBouncingGrid.square(
                          size: 40,
                          backgroundColor: Get.theme.cardColor,
                          duration: const Duration(seconds: 1),
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
                          height: 2,
                          color: Get.theme.accentColor,
                          width: 120,
                        ),
                        const SizedBox(height: 16),
                        Wrap(
                          runSpacing: 20,
                          spacing: 20,
                          children: repositoriesPinned.map(
                            (repo) {
                              final index = repositoriesPinned.indexOf(repo);
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
                          child: CustomizedResponsive.isSmallScreen()
                              ? Column(
                                  children: [
                                    totalCommit(result),
                                    totalRepository(result)
                                  ],
                                )
                              : Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    totalCommit(result),
                                    totalRepository(result)
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
        ),
      ),
    );
  }

  Row totalRepository(QueryResult result) {
    return Row(
      children: [
        Text(
          LocaleKeys.repoSection_totalRepo.tr,
          style: Get.textTheme.headline4!.copyWith(fontSize: 16),
        ),
        Text(
          result.data!['viewer']['repositories']['totalCount'].toString(),
          style: Get.textTheme.headline5!.copyWith(fontSize: 16),
        ),
      ],
    );
  }

  Row totalCommit(QueryResult result) {
    return Row(
      children: [
        Text(
          LocaleKeys.repoSection_totalCommits.tr,
          style: Get.textTheme.headline4!.copyWith(fontSize: 16),
        ),
        Text(
          result.data!['viewer']['contributionsCollection']
                  ['totalCommitContributions']
              .toString(),
          style: Get.textTheme.headline5!.copyWith(fontSize: 16),
        ),
      ],
    );
  }
}
