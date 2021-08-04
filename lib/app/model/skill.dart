class Skill {
  String? name;
  String? icon;
  SkillType? skillType;

  Skill({
    this.name,
    this.icon,
    this.skillType,
  });
}

enum SkillType {
  flutter,
  rn,
  js,
  ts,
  firebase,
  appleStore,
  googlePlay,
  git,
  php,
  docker,
  aws,
}
