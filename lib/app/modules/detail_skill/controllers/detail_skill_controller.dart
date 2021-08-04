import 'package:get/get.dart';
import 'package:me/app/model/skill.dart';
import 'package:me/generated/locales.g.dart';

class DetailSkillController extends GetxController {
  final _skill = Skill().obs;
  final _descriptionSkill = ''.obs;

  Skill get currentSkill => _skill.value;
  String get descriptionSkill => _descriptionSkill.value;

  final skill = Get.arguments;

  @override
  void onInit() async {
    super.onInit();
    _skill.value = skill;
    await getDescriptionSkill(skill.skillType);
  }

  Future<void> getDescriptionSkill(SkillType skillType) async {
    switch (skillType) {
      case SkillType.flutter:
        _descriptionSkill.value = LocaleKeys.skillsSection_flutter.tr;
        break;
      case SkillType.rn:
        _descriptionSkill.value = LocaleKeys.skillsSection_rn.tr;
        break;
      case SkillType.js:
        _descriptionSkill.value = LocaleKeys.skillsSection_js.tr;
        break;
      case SkillType.ts:
        _descriptionSkill.value = LocaleKeys.skillsSection_js.tr;
        break;
      case SkillType.firebase:
        _descriptionSkill.value = LocaleKeys.skillsSection_firebase.tr;
        break;
      case SkillType.appleStore:
        _descriptionSkill.value = LocaleKeys.skillsSection_appleStore.tr;
        break;
      case SkillType.googlePlay:
        _descriptionSkill.value = LocaleKeys.skillsSection_googlePlay.tr;
        break;
      case SkillType.git:
        _descriptionSkill.value = LocaleKeys.skillsSection_git.tr;
        break;
      case SkillType.php:
        _descriptionSkill.value = LocaleKeys.skillsSection_php.tr;
        break;
      case SkillType.docker:
        _descriptionSkill.value = LocaleKeys.skillsSection_docker.tr;
        break;
      case SkillType.aws:
        _descriptionSkill.value = LocaleKeys.skillsSection_aws.tr;
        break;
      default:
        _descriptionSkill.value = '';
    }
  }
}
