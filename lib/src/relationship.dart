import 'package:flutter/material.dart';
import 'package:love_of_my_life/src/src.dart';

import 'breakfast.dart';
import 'enums.dart';

class Relationship {
  final LoveLanguage mainLoveLanguage;
  final Partner mainPartner1;
  final Partner mainPartner2;
  final List<Partner> sidePartners;

  Relationship({
    required this.mainPartner1,
    required this.mainPartner2,
    required this.mainLoveLanguage,
    required RelationshipPhase initialPhase,
    this.sidePartners = const <Partner>[],
  })  : _phase = initialPhase,
        assert(
          !sidePartners.containsWhere((element) => element is MainChick),
          "A main chick is not a side partner and hence must not be part of sidePartners: $sidePartners",
        );

  double _relationshipMeter = 0;

  RelationshipPhase _phase;

  final bool _hasBreakfast = false;

  bool get eDonCast => _hasBreakfast;

  double get relationshipMeter => _relationshipMeter;

  set relationshipMeter(double relationshipMeter) {
    _relationshipMeter = relationshipMeter;
  }

  RelationshipPhase get currentPhase => _phase;

  void spendQualityTime(
    Duration amountOfTime,
    bool isOutdoors,
  ) {
    //TODO: implement spendQualityTime
  }

  @mustCallSuper
  void grow(RelationshipPhase phase) {
    _phase = phase;
  }

  void end({
    required Partner breakfastServer,
    required Partner breakfastChopper,
  }) {
    final Breakfast servedBreakfast = breakfastServer.serveBreakfast();
    breakfastChopper.chopBreakfast(servedBreakfast);
    relationshipMeter = 0;
    _phase = RelationshipPhase.eDonCast;
  }

  Relationship copyWith({
    final RelationshipPhase? currentPhase,
    final LoveLanguage? mainLoveLanguage,
    final Partner? mainPartner1,
    final Partner? mainPartner2,
    final List<Partner>? sidePartners,
  }) {
    return Relationship(
      initialPhase: currentPhase ?? this.currentPhase,
      mainLoveLanguage: mainLoveLanguage ?? this.mainLoveLanguage,
      mainPartner1: mainPartner1 ?? this.mainPartner1,
      mainPartner2: mainPartner2 ?? this.mainPartner2,
      sidePartners: sidePartners ?? this.sidePartners,
    );
  }
}
