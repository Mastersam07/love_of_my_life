import 'package:love_of_my_life/love_of_my_life.dart';
import 'package:love_of_my_life/src/breakfast.dart';

void main() {
  final MainChick me = MainChick(
    initialPhase: RelationshipPhase.initialMushy,
    mainLoveLanguage: LoveLanguage.physicalTouch,
    mainQuality: PartnerQuality.physicalAssets,
  );
  final MainChick myChick = MainChick(
    initialPhase: RelationshipPhase.initialMushy,
    mainLoveLanguage: LoveLanguage.qualityTime,
    mainQuality: PartnerQuality.money,
  );

  final SideChick sideChick = SideChick(
    initialPhase: RelationshipPhase.friends,
    mainQuality: PartnerQuality.physicalAssets,
  );

  print('I am $me');
  print('I like $myChick');

  print('start relationship');
  final Relationship relationship = Relationship(
    mainPartner1: me,
    mainPartner2: myChick,
    sidePartners: [sideChick],
    initialPhase: RelationshipPhase.deepInLove,
  );

  print('but there\'s this chick $sideChick');
  print('time to serve on breakfast');

  me.breakfast = const Breakfast(
    type: BreakfastType.hot,
    serviceMethod: BreakfastServiceMethod.inPerson,
    status: BreakfastStatus.cooking,
  );

  relationship.end(
    breakfastServer: me,
    breakfastChopper: sideChick,
  );

  print('end of story!!!,\n\n kindly send pr to update this story');
}
