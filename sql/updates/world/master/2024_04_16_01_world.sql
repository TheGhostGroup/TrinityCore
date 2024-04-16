-- Add missing condition

INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `Comment`) VALUES
(26, 7510, 1519, 0, 0, 47, 0, 44473, 8 | 2 | 64, 0, 0, 'Apply Phase 7510 if Quest (44473) Is taken, completed, rewarded'); -- A Weapon for the Alliance
