-- Kravel Koalbeard
DELETE FROM `creature_text` WHERE `CreatureID`=4452 AND `GroupID` IN (0,1,2);
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(4452,0,0,"%s places the crate of parts on the ground.",16,0,100,0,0,0,1479,0,"Kravel Koalbeard"),
(4452,1,0,"%s grabs a part and puts it in his pocket...",16,0,100,0,0,0,1477,0,"Kravel Koalbeard"),
(4452,2,0,"There, that should do it...",12,0,100,0,0,0,1478,0,"Kravel Koalbeard");

UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=4452;
DELETE FROM `smart_scripts` WHERE `entryorguid`=4452 AND `source_type`=0 AND `id`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=445200 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(4452,0,0,0,20,0,100,0,1112,0,0,0,80,445200,0,0,0,0,0,1,0,0,0,0,0,0,0,"Kravel Koalbeard - On Quest 'Parts for Kravel' Finished - Run Script"),
(445200,9,0,0,0,0,100,0,0,0,0,0,83,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Kravel Koalbeard - On Script - Remove Npc Flag Questgiver"),
(445200,9,1,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Kravel Koalbeard - On Script - Say Line 0"),
(445200,9,2,0,0,0,100,0,4000,4000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Kravel Koalbeard - On Script - Say Line 1"),
(445200,9,3,0,0,0,100,0,2000,2000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Kravel Koalbeard - On Script - Say Line 2"),
(445200,9,4,0,0,0,100,0,2000,2000,0,0,82,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Kravel Koalbeard - On Script - Add Npc Flag Questgiver");
