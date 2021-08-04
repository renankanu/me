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
      case SkillType.js:
        _descriptionSkill.value = LocaleKeys.skillsSection_flutter.tr;
        break;
      default:
        _descriptionSkill.value = '';
    }
  }
}
