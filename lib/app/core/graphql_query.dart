abstract class Queries {
  static const pinnedRepo = """
                            query {
                            viewer {
                                    repositories {
                                        totalCount
                                    }
                                    followers {
                                        totalCount
                                    }
                                    following {
                                        totalCount
                                    }
                                    starredRepositories {
                                        totalCount
                                    }
                                    pinnedItems(first: 6) {
                                        nodes {
                                          ... on Repository {
                                            name
                                            url
                                            nameWithOwner
                                            description
                                            owner {
                                              avatarUrl
                                            }
                                            updatedAt
                                            viewerHasStarred
                                            primaryLanguage {
                                              name
                                              color
                                            }
                                            stargazers {
                                              totalCount
                                            }
                                          }
                                        }
                                    }
                                    contributionsCollection {
                                      totalCommitContributions
                                    }
                                }
                            }
  """;
}
