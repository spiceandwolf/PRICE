SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_canc.id) AND (cg_canc.id = cg_sb1.drug) AND (cg_atm.drug = cg_sb2.drug) AND (cg_canc.class = '1') AND (cg_sb1.id < 4576) AND (cg_sb2.id < 702);||230480||@0-0@
/* (atom cg_atm) */ SELECT COUNT(*) FROM atom cg_atm;||9064||@0-1@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc WHERE (cg_canc.class = '1');||182||@0-2@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1 WHERE (cg_sb1.id < 4576);||4575||@0-3@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2 WHERE (cg_sb2.id < 702);||701||@0-4@
/* (atom cg_atm, canc cg_canc) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc WHERE (cg_atm.drug = cg_canc.id) AND (cg_canc.class = '1');||4559||@0-5@
/* (atom cg_atm, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_sb1.id < 4576);||219046||@0-6@
/* (atom cg_atm, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_sb2.drug) AND (cg_sb2.id < 702);||24776||@0-7@
/* (canc cg_canc, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.class = '1') AND (cg_sb1.id < 4576);||1834||@0-8@
/* (canc cg_canc, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_canc.class = '1') AND (cg_sb2.id < 702);||321||@0-9@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.id < 4576) AND (cg_sb2.id < 702);||12614||@0-10@
/* (atom cg_atm, canc cg_canc, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_1 cg_sb1 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb1.drug) AND (cg_canc.class = '1') AND (cg_sb1.id < 4576);||108682||@0-11@
/* (atom cg_atm, canc cg_canc, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb2.drug) AND (cg_canc.class = '1') AND (cg_sb2.id < 702);||11130||@0-12@
/* (atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb2.drug) AND (cg_sb1.id < 4576) AND (cg_sb2.id < 702);||628376||@0-13@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb2.drug) AND (cg_canc.class = '1') AND (cg_sb1.id < 4576) AND (cg_sb2.id < 702);||4828||@0-14@
/* (atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_canc.id) AND (cg_canc.id = cg_sb1.drug) AND (cg_atm.drug = cg_sb2.drug) AND (cg_canc.class = '1') AND (cg_sb1.id < 4576) AND (cg_sb2.id < 702);||230480||@0-15@
SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb2.drug) AND (cg_sb2.drug = cg_sb3.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.name = 'c') AND (cg_sb7.id < 2016);||17280||@1-0@
/* (atom cg_atm) */ SELECT COUNT(*) FROM atom cg_atm WHERE (cg_atm.name = 'c');||3428||@1-1@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1;||13562||@1-2@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2;||926||@1-3@
/* (sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_3 cg_sb3;||12||@1-4@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7 WHERE (cg_sb7.id < 2016);||2015||@1-5@
/* (atom cg_atm, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.name = 'c');||230356||@1-6@
/* (atom cg_atm, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_sb2.drug) AND (cg_atm.name = 'c');||12172||@1-7@
/* (atom cg_atm, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM atom cg_atm, sbond_3 cg_sb3 WHERE (cg_atm.drug = cg_sb3.drug) AND (cg_atm.name = 'c');||68||@1-8@
/* (atom cg_atm, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb7.drug) AND (cg_atm.name = 'c') AND (cg_sb7.id < 2016);||28052||@1-9@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_sb1.drug = cg_sb2.drug);||46228||@1-10@
/* (sbond_1 cg_sb1, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_3 cg_sb3 WHERE (cg_sb1.drug = cg_sb3.drug);||120||@1-11@
/* (sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb7.drug) AND (cg_sb7.id < 2016);||88148||@1-12@
/* (sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_sb2.drug = cg_sb3.drug);||8||@1-13@
/* (sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb2.drug = cg_sb7.drug) AND (cg_sb7.id < 2016);||5132||@1-14@
/* (sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb3.drug = cg_sb7.drug) AND (cg_sb7.id < 2016);||48||@1-15@
/* (atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb2.drug) AND (cg_atm.name = 'c');||966332||@1-16@
/* (atom cg_atm, sbond_1 cg_sb1, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_3 cg_sb3 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb3.drug) AND (cg_atm.name = 'c');||1056||@1-17@
/* (atom cg_atm, sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.name = 'c') AND (cg_sb7.id < 2016);||1631476||@1-18@
/* (atom cg_atm, sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM atom cg_atm, sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_atm.drug = cg_sb2.drug) AND (cg_atm.drug = cg_sb3.drug) AND (cg_atm.name = 'c');||80||@1-19@
/* (atom cg_atm, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb2.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.name = 'c') AND (cg_sb7.id < 2016);||81604||@1-20@
/* (atom cg_atm, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb3.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.name = 'c') AND (cg_sb7.id < 2016);||480||@1-21@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.drug = cg_sb3.drug);||144||@1-22@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.drug = cg_sb7.drug) AND (cg_sb7.id < 2016);||262872||@1-23@
/* (sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb3.drug) AND (cg_sb1.drug = cg_sb7.drug) AND (cg_sb7.id < 2016);||864||@1-24@
/* (sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb2.drug = cg_sb3.drug) AND (cg_sb2.drug = cg_sb7.drug) AND (cg_sb7.id < 2016);||96||@1-25@
/* (atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_sb1.drug = cg_sb2.drug) AND (cg_atm.drug = cg_sb3.drug) AND (cg_atm.name = 'c');||1440||@1-26@
/* (atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_sb1.drug = cg_sb2.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.name = 'c') AND (cg_sb7.id < 2016);||5249176||@1-27@
/* (atom cg_atm, sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb3.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.name = 'c') AND (cg_sb7.id < 2016);||8640||@1-28@
/* (atom cg_atm, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb2.drug) AND (cg_sb2.drug = cg_sb3.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.name = 'c') AND (cg_sb7.id < 2016);||960||@1-29@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb2.drug = cg_sb3.drug) AND (cg_sb1.drug = cg_sb7.drug) AND (cg_sb7.id < 2016);||1728||@1-30@
/* (atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb2.drug) AND (cg_sb2.drug = cg_sb3.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.name = 'c') AND (cg_sb7.id < 2016);||17280||@1-31@
SELECT COUNT(*) FROM atom cg_atm, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb3.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_sb7.id >= 2402);||624||@2-0@
/* (atom cg_atm) */ SELECT COUNT(*) FROM atom cg_atm;||9064||@2-1@
/* (sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_3 cg_sb3;||12||@2-2@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7 WHERE (cg_sb7.id >= 2402);||1733||@2-3@
/* (atom cg_atm, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM atom cg_atm, sbond_3 cg_sb3 WHERE (cg_atm.drug = cg_sb3.drug);||124||@2-4@
/* (atom cg_atm, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb7.drug) AND (cg_sb7.id >= 2402);||61240||@2-5@
/* (sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb3.drug = cg_sb7.drug) AND (cg_sb7.id >= 2402);||48||@2-6@
/* (atom cg_atm, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb3.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_sb7.id >= 2402);||624||@2-7@
SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb7.drug) AND (cg_atm.drug = cg_canc.id) AND (cg_canc.id = cg_sb1.drug) AND (cg_atm.atomtype = '75') AND (cg_sb7.id < 3899);||3240||@3-0@
/* (atom cg_atm) */ SELECT COUNT(*) FROM atom cg_atm WHERE (cg_atm.atomtype = '75');||23||@3-1@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc;||329||@3-2@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1;||13562||@3-3@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7 WHERE (cg_sb7.id < 3899);||3898||@3-4@
/* (atom cg_atm, canc cg_canc) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.atomtype = '75');||23||@3-5@
/* (atom cg_atm, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.atomtype = '75');||1490||@3-6@
/* (atom cg_atm, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb7.drug) AND (cg_atm.atomtype = '75') AND (cg_sb7.id < 3899);||72||@3-7@
/* (canc cg_canc, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1 WHERE (cg_canc.id = cg_sb1.drug);||13422||@3-8@
/* (canc cg_canc, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb7.drug) AND (cg_sb7.id < 3899);||3828||@3-9@
/* (sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb7.drug) AND (cg_sb7.id < 3899);||166244||@3-10@
/* (atom cg_atm, canc cg_canc, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_1 cg_sb1 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb1.drug) AND (cg_atm.atomtype = '75');||1490||@3-11@
/* (atom cg_atm, canc cg_canc, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.atomtype = '75') AND (cg_sb7.id < 3899);||72||@3-12@
/* (atom cg_atm, sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.atomtype = '75') AND (cg_sb7.id < 3899);||3240||@3-13@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_sb7.id < 3899);||166244||@3-14@
/* (atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb1.drug) AND (cg_canc.id = cg_sb1.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.atomtype = '75') AND (cg_sb7.id < 3899);||3240||@3-15@
SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb3.drug) AND (cg_sb1.drug = cg_sb7.drug) AND (cg_sb1.id < 12608);||864||@4-0@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1 WHERE (cg_sb1.id < 12608);||12607||@4-1@
/* (sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_3 cg_sb3;||12||@4-2@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7;||4134||@4-3@
/* (sbond_1 cg_sb1, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_3 cg_sb3 WHERE (cg_sb1.drug = cg_sb3.drug) AND (cg_sb1.id < 12608);||72||@4-4@
/* (sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb7.drug) AND (cg_sb1.id < 12608);||156132||@4-5@
/* (sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb3.drug = cg_sb7.drug);||96||@4-6@
/* (sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb3.drug) AND (cg_sb1.drug = cg_sb7.drug) AND (cg_sb1.id < 12608);||864||@4-7@
SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb2.drug = cg_sb3.drug) AND (cg_sb1.drug = cg_sb7.drug) AND (cg_sb1.id < 11912);||1728||@5-0@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1 WHERE (cg_sb1.id < 11912);||11911||@5-1@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2;||926||@5-2@
/* (sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_3 cg_sb3;||12||@5-3@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7;||4134||@5-4@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.id < 11912);||41298||@5-5@
/* (sbond_1 cg_sb1, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_3 cg_sb3 WHERE (cg_sb1.drug = cg_sb3.drug) AND (cg_sb1.id < 11912);||72||@5-6@
/* (sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb7.drug) AND (cg_sb1.id < 11912);||141296||@5-7@
/* (sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_sb2.drug = cg_sb3.drug);||8||@5-8@
/* (sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb2.drug = cg_sb7.drug);||14728||@5-9@
/* (sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb3.drug = cg_sb7.drug);||96||@5-10@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.drug = cg_sb3.drug) AND (cg_sb1.id < 11912);||144||@5-11@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.drug = cg_sb7.drug) AND (cg_sb1.id < 11912);||736496||@5-12@
/* (sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb3.drug) AND (cg_sb1.drug = cg_sb7.drug) AND (cg_sb1.id < 11912);||864||@5-13@
/* (sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb2.drug = cg_sb3.drug) AND (cg_sb2.drug = cg_sb7.drug);||96||@5-14@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb2.drug = cg_sb3.drug) AND (cg_sb1.drug = cg_sb7.drug) AND (cg_sb1.id < 11912);||1728||@5-15@
SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_canc.class = '1') AND (cg_sb2.id >= 262);||351||@6-0@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc WHERE (cg_canc.class = '1');||182||@6-1@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2 WHERE (cg_sb2.id >= 262);||665||@6-2@
/* (canc cg_canc, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_canc.class = '1') AND (cg_sb2.id >= 262);||351||@6-3@
SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_canc.id) AND (cg_canc.id = cg_sb1.drug) AND (cg_atm.drug = cg_sb2.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.atomtype = '1') AND (cg_atm.name = 'h') AND (cg_sb7.id < 1120);||181008||@7-0@
/* (atom cg_atm) */ SELECT COUNT(*) FROM atom cg_atm WHERE (cg_atm.atomtype = '1') AND (cg_atm.name = 'h');||352||@7-1@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc;||329||@7-2@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1;||13562||@7-3@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2;||926||@7-4@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7 WHERE (cg_sb7.id < 1120);||1119||@7-5@
/* (atom cg_atm, canc cg_canc) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.atomtype = '1') AND (cg_atm.name = 'h');||348||@7-6@
/* (atom cg_atm, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.atomtype = '1') AND (cg_atm.name = 'h');||13338||@7-7@
/* (atom cg_atm, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_sb2.drug) AND (cg_atm.atomtype = '1') AND (cg_atm.name = 'h');||1244||@7-8@
/* (atom cg_atm, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb7.drug) AND (cg_atm.atomtype = '1') AND (cg_atm.name = 'h') AND (cg_sb7.id < 1120);||1132||@7-9@
/* (canc cg_canc, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1 WHERE (cg_canc.id = cg_sb1.drug);||13422||@7-10@
/* (canc cg_canc, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb2.drug);||900||@7-11@
/* (canc cg_canc, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb7.drug) AND (cg_sb7.id < 1120);||1095||@7-12@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_sb1.drug = cg_sb2.drug);||46228||@7-13@
/* (sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb7.drug) AND (cg_sb7.id < 1120);||47812||@7-14@
/* (sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb2.drug = cg_sb7.drug) AND (cg_sb7.id < 1120);||2304||@7-15@
/* (atom cg_atm, canc cg_canc, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_1 cg_sb1 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb1.drug) AND (cg_atm.atomtype = '1') AND (cg_atm.name = 'h');||13338||@7-16@
/* (atom cg_atm, canc cg_canc, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb2.drug) AND (cg_atm.atomtype = '1') AND (cg_atm.name = 'h');||1244||@7-17@
/* (atom cg_atm, canc cg_canc, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.atomtype = '1') AND (cg_atm.name = 'h') AND (cg_sb7.id < 1120);||1132||@7-18@
/* (atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb2.drug) AND (cg_atm.atomtype = '1') AND (cg_atm.name = 'h');||70768||@7-19@
/* (atom cg_atm, sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.atomtype = '1') AND (cg_atm.name = 'h') AND (cg_sb7.id < 1120);||47456||@7-20@
/* (atom cg_atm, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb2.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.atomtype = '1') AND (cg_atm.name = 'h') AND (cg_sb7.id < 1120);||3216||@7-21@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb2.drug);||46228||@7-22@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_sb7.id < 1120);||47812||@7-23@
/* (canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_sb7.id < 1120);||2304||@7-24@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.drug = cg_sb7.drug) AND (cg_sb7.id < 1120);||130488||@7-25@
/* (atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb1.drug) AND (cg_canc.id = cg_sb1.drug) AND (cg_atm.drug = cg_sb2.drug) AND (cg_atm.atomtype = '1') AND (cg_atm.name = 'h');||70768||@7-26@
/* (atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb1.drug) AND (cg_canc.id = cg_sb1.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.atomtype = '1') AND (cg_atm.name = 'h') AND (cg_sb7.id < 1120);||47456||@7-27@
/* (atom cg_atm, canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb2.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.atomtype = '1') AND (cg_atm.name = 'h') AND (cg_sb7.id < 1120);||3216||@7-28@
/* (atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb2.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.atomtype = '1') AND (cg_atm.name = 'h') AND (cg_sb7.id < 1120);||181008||@7-29@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb2.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_sb7.id < 1120);||130488||@7-30@
/* (atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_canc.id) AND (cg_canc.id = cg_sb1.drug) AND (cg_atm.drug = cg_sb2.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.atomtype = '1') AND (cg_atm.name = 'h') AND (cg_sb7.id < 1120);||181008||@7-31@
SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb2.drug) AND (cg_canc.class = '0') AND (cg_sb2.id >= 520) AND (cg_sb2.id < 823);||3860||@8-0@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc WHERE (cg_canc.class = '0');||147||@8-1@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1;||13562||@8-2@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2 WHERE (cg_sb2.id >= 520) AND (cg_sb2.id < 823);||303||@8-3@
/* (canc cg_canc, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.class = '0');||6818||@8-4@
/* (canc cg_canc, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_canc.class = '0') AND (cg_sb2.id >= 520) AND (cg_sb2.id < 823);||62||@8-5@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb2.id >= 520) AND (cg_sb2.id < 823);||13632||@8-6@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb2.drug) AND (cg_canc.class = '0') AND (cg_sb2.id >= 520) AND (cg_sb2.id < 823);||3860||@8-7@
SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_sb1.id < 11724) AND (cg_sb7.id >= 1773);||65206||@9-0@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc;||329||@9-1@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1 WHERE (cg_sb1.id < 11724);||11723||@9-2@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7 WHERE (cg_sb7.id >= 1773);||2362||@9-3@
/* (canc cg_canc, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_sb1.id < 11724);||11583||@9-4@
/* (canc cg_canc, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb7.drug) AND (cg_sb7.id >= 1773);||2316||@9-5@
/* (sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb7.drug) AND (cg_sb1.id < 11724) AND (cg_sb7.id >= 1773);||65206||@9-6@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_sb1.id < 11724) AND (cg_sb7.id >= 1773);||65206||@9-7@
SELECT COUNT(*) FROM atom cg_atm, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb3.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_sb7.id < 1224);||96||@10-0@
/* (atom cg_atm) */ SELECT COUNT(*) FROM atom cg_atm WHERE (cg_atm.charge = 'a0=0_0615<x<=0_1375');||1830||@10-1@
/* (sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_3 cg_sb3;||12||@10-2@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7 WHERE (cg_sb7.id < 1224);||1223||@10-3@
/* (atom cg_atm, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM atom cg_atm, sbond_3 cg_sb3 WHERE (cg_atm.drug = cg_sb3.drug) AND (cg_atm.charge = 'a0=0_0615<x<=0_1375');||8||@10-4@
/* (atom cg_atm, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb7.drug) AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_sb7.id < 1224);||6914||@10-5@
/* (sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb3.drug = cg_sb7.drug) AND (cg_sb7.id < 1224);||48||@10-6@
/* (atom cg_atm, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb3.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_sb7.id < 1224);||96||@10-7@
SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.charge = 'a0=-0_1355<x<=-0_0175') AND (cg_sb1.id < 12582);||105298||@11-0@
/* (atom cg_atm) */ SELECT COUNT(*) FROM atom cg_atm WHERE (cg_atm.charge = 'a0=-0_1355<x<=-0_0175');||1814||@11-1@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1 WHERE (cg_sb1.id < 12582);||12581||@11-2@
/* (atom cg_atm, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.charge = 'a0=-0_1355<x<=-0_0175') AND (cg_sb1.id < 12582);||105298||@11-3@
SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_sb2.drug) AND (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb1.drug) AND (cg_atm.charge = 'a0=-0_0175<x<=0_0615') AND (cg_atm.atomtype = '26') AND (cg_sb2.id >= 612);||48||@12-0@
/* (atom cg_atm) */ SELECT COUNT(*) FROM atom cg_atm WHERE (cg_atm.charge = 'a0=-0_0175<x<=0_0615') AND (cg_atm.atomtype = '26');||1||@12-1@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc;||329||@12-2@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1;||13562||@12-3@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2 WHERE (cg_sb2.id >= 612);||315||@12-4@
/* (atom cg_atm, canc cg_canc) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.charge = 'a0=-0_0175<x<=0_0615') AND (cg_atm.atomtype = '26');||1||@12-5@
/* (atom cg_atm, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.charge = 'a0=-0_0175<x<=0_0615') AND (cg_atm.atomtype = '26');||12||@12-6@
/* (atom cg_atm, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_sb2.drug) AND (cg_atm.charge = 'a0=-0_0175<x<=0_0615') AND (cg_atm.atomtype = '26') AND (cg_sb2.id >= 612);||4||@12-7@
/* (canc cg_canc, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1 WHERE (cg_canc.id = cg_sb1.drug);||13422||@12-8@
/* (canc cg_canc, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_sb2.id >= 612);||302||@12-9@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb2.id >= 612);||14112||@12-10@
/* (atom cg_atm, canc cg_canc, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_1 cg_sb1 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb1.drug) AND (cg_atm.charge = 'a0=-0_0175<x<=0_0615') AND (cg_atm.atomtype = '26');||12||@12-11@
/* (atom cg_atm, canc cg_canc, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb2.drug) AND (cg_atm.charge = 'a0=-0_0175<x<=0_0615') AND (cg_atm.atomtype = '26') AND (cg_sb2.id >= 612);||4||@12-12@
/* (atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb2.drug) AND (cg_atm.charge = 'a0=-0_0175<x<=0_0615') AND (cg_atm.atomtype = '26') AND (cg_sb2.id >= 612);||48||@12-13@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb2.drug) AND (cg_sb2.id >= 612);||14112||@12-14@
/* (atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb1.drug) AND (cg_canc.id = cg_sb1.drug) AND (cg_atm.drug = cg_sb2.drug) AND (cg_atm.charge = 'a0=-0_0175<x<=0_0615') AND (cg_atm.atomtype = '26') AND (cg_sb2.id >= 612);||48||@12-15@
SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_canc.id) AND (cg_canc.id = cg_sb2.drug) AND (cg_canc.id = cg_sb3.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_sb2.id < 438);||1728||@13-0@
/* (atom cg_atm) */ SELECT COUNT(*) FROM atom cg_atm;||9064||@13-1@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc;||329||@13-2@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2 WHERE (cg_sb2.id < 438);||437||@13-3@
/* (sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_3 cg_sb3;||12||@13-4@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7;||4134||@13-5@
/* (atom cg_atm, canc cg_canc) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc WHERE (cg_atm.drug = cg_canc.id);||8982||@13-6@
/* (atom cg_atm, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_sb2.drug) AND (cg_sb2.id < 438);||15459||@13-7@
/* (atom cg_atm, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM atom cg_atm, sbond_3 cg_sb3 WHERE (cg_atm.drug = cg_sb3.drug);||124||@13-8@
/* (atom cg_atm, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb7.drug);||137216||@13-9@
/* (canc cg_canc, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_sb2.id < 438);||431||@13-10@
/* (canc cg_canc, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM canc cg_canc, sbond_3 cg_sb3 WHERE (cg_canc.id = cg_sb3.drug);||8||@13-11@
/* (canc cg_canc, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb7.drug);||4064||@13-12@
/* (sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_sb2.drug = cg_sb3.drug) AND (cg_sb2.id < 438);||8||@13-13@
/* (sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb2.drug = cg_sb7.drug) AND (cg_sb2.id < 438);||4624||@13-14@
/* (sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb3.drug = cg_sb7.drug);||96||@13-15@
/* (atom cg_atm, canc cg_canc, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb2.drug) AND (cg_sb2.id < 438);||15459||@13-16@
/* (atom cg_atm, canc cg_canc, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_3 cg_sb3 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb3.drug);||124||@13-17@
/* (atom cg_atm, canc cg_canc, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb7.drug);||137216||@13-18@
/* (atom cg_atm, sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM atom cg_atm, sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_atm.drug = cg_sb2.drug) AND (cg_atm.drug = cg_sb3.drug) AND (cg_sb2.id < 438);||144||@13-19@
/* (atom cg_atm, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb2.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_sb2.id < 438);||178908||@13-20@
/* (atom cg_atm, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb3.drug) AND (cg_atm.drug = cg_sb7.drug);||1488||@13-21@
/* (canc cg_canc, sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_canc.id = cg_sb3.drug) AND (cg_sb2.id < 438);||8||@13-22@
/* (canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_sb2.id < 438);||4624||@13-23@
/* (canc cg_canc, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb3.drug) AND (cg_canc.id = cg_sb7.drug);||96||@13-24@
/* (sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb2.drug = cg_sb3.drug) AND (cg_sb2.drug = cg_sb7.drug) AND (cg_sb2.id < 438);||96||@13-25@
/* (atom cg_atm, canc cg_canc, sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_atm.drug = cg_canc.id) AND (cg_canc.id = cg_sb2.drug) AND (cg_atm.drug = cg_sb3.drug) AND (cg_sb2.id < 438);||144||@13-26@
/* (atom cg_atm, canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_canc.id) AND (cg_canc.id = cg_sb2.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_sb2.id < 438);||178908||@13-27@
/* (atom cg_atm, canc cg_canc, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_canc.id) AND (cg_canc.id = cg_sb3.drug) AND (cg_atm.drug = cg_sb7.drug);||1488||@13-28@
/* (atom cg_atm, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb2.drug) AND (cg_sb2.drug = cg_sb3.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_sb2.id < 438);||1728||@13-29@
/* (canc cg_canc, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_canc.id = cg_sb3.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_sb2.id < 438);||96||@13-30@
/* (atom cg_atm, canc cg_canc, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_canc.id) AND (cg_canc.id = cg_sb2.drug) AND (cg_canc.id = cg_sb3.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_sb2.id < 438);||1728||@13-31@
SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb3.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_sb1.id >= 12782);||576||@14-0@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc;||329||@14-1@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1 WHERE (cg_sb1.id >= 12782);||781||@14-2@
/* (sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_3 cg_sb3;||12||@14-3@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7;||4134||@14-4@
/* (canc cg_canc, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_sb1.id >= 12782);||781||@14-5@
/* (canc cg_canc, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM canc cg_canc, sbond_3 cg_sb3 WHERE (cg_canc.id = cg_sb3.drug);||8||@14-6@
/* (canc cg_canc, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb7.drug);||4064||@14-7@
/* (sbond_1 cg_sb1, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_3 cg_sb3 WHERE (cg_sb1.drug = cg_sb3.drug) AND (cg_sb1.id >= 12782);||48||@14-8@
/* (sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb7.drug) AND (cg_sb1.id >= 12782);||10776||@14-9@
/* (sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb3.drug = cg_sb7.drug);||96||@14-10@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_3 cg_sb3 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb3.drug) AND (cg_sb1.id >= 12782);||48||@14-11@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_sb1.id >= 12782);||10776||@14-12@
/* (canc cg_canc, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb3.drug) AND (cg_canc.id = cg_sb7.drug);||96||@14-13@
/* (sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb3.drug) AND (cg_sb1.drug = cg_sb7.drug) AND (cg_sb1.id >= 12782);||576||@14-14@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb3.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_sb1.id >= 12782);||576||@14-15@
SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_canc.class = '1') AND (cg_sb2.id >= 556) AND (cg_sb7.id >= 1564) AND (cg_sb7.id < 3477);||6568||@15-0@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc WHERE (cg_canc.class = '1');||182||@15-1@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2 WHERE (cg_sb2.id >= 556);||371||@15-2@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7 WHERE (cg_sb7.id >= 1564) AND (cg_sb7.id < 3477);||1913||@15-3@
/* (canc cg_canc, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_canc.class = '1') AND (cg_sb2.id >= 556);||229||@15-4@
/* (canc cg_canc, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb7.drug) AND (cg_canc.class = '1') AND (cg_sb7.id >= 1564) AND (cg_sb7.id < 3477);||1331||@15-5@
/* (sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb2.drug = cg_sb7.drug) AND (cg_sb2.id >= 556) AND (cg_sb7.id >= 1564) AND (cg_sb7.id < 3477);||7756||@15-6@
/* (canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_canc.class = '1') AND (cg_sb2.id >= 556) AND (cg_sb7.id >= 1564) AND (cg_sb7.id < 3477);||6568||@15-7@
SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb3.drug) AND (cg_sb1.drug = cg_sb7.drug) AND (cg_sb7.id < 2620);||864||@16-0@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1;||13562||@16-1@
/* (sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_3 cg_sb3;||12||@16-2@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7 WHERE (cg_sb7.id < 2620);||2619||@16-3@
/* (sbond_1 cg_sb1, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_3 cg_sb3 WHERE (cg_sb1.drug = cg_sb3.drug);||120||@16-4@
/* (sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb7.drug) AND (cg_sb7.id < 2620);||114498||@16-5@
/* (sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb3.drug = cg_sb7.drug) AND (cg_sb7.id < 2620);||48||@16-6@
/* (sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb3.drug) AND (cg_sb1.drug = cg_sb7.drug) AND (cg_sb7.id < 2620);||864||@16-7@
SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb3.drug) AND (cg_sb1.drug = cg_sb7.drug) AND (cg_sb1.id < 6808) AND (cg_sb7.id < 3478);||864||@17-0@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1 WHERE (cg_sb1.id < 6808);||6807||@17-1@
/* (sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_3 cg_sb3;||12||@17-2@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7 WHERE (cg_sb7.id < 3478);||3477||@17-3@
/* (sbond_1 cg_sb1, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_3 cg_sb3 WHERE (cg_sb1.drug = cg_sb3.drug) AND (cg_sb1.id < 6808);||72||@17-4@
/* (sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb7.drug) AND (cg_sb1.id < 6808) AND (cg_sb7.id < 3478);||69816||@17-5@
/* (sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb3.drug = cg_sb7.drug) AND (cg_sb7.id < 3478);||48||@17-6@
/* (sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb3.drug) AND (cg_sb1.drug = cg_sb7.drug) AND (cg_sb1.id < 6808) AND (cg_sb7.id < 3478);||864||@17-7@
SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_atm.drug = cg_canc.id) AND (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb2.drug) AND (cg_atm.drug = cg_sb3.drug) AND (cg_sb2.id < 584);||2592||@18-0@
/* (atom cg_atm) */ SELECT COUNT(*) FROM atom cg_atm;||9064||@18-1@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc;||329||@18-2@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1;||13562||@18-3@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2 WHERE (cg_sb2.id < 584);||583||@18-4@
/* (sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_3 cg_sb3;||12||@18-5@
/* (atom cg_atm, canc cg_canc) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc WHERE (cg_atm.drug = cg_canc.id);||8982||@18-6@
/* (atom cg_atm, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1 WHERE (cg_atm.drug = cg_sb1.drug);||642488||@18-7@
/* (atom cg_atm, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_sb2.drug) AND (cg_sb2.id < 584);||19266||@18-8@
/* (atom cg_atm, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM atom cg_atm, sbond_3 cg_sb3 WHERE (cg_atm.drug = cg_sb3.drug);||124||@18-9@
/* (canc cg_canc, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1 WHERE (cg_canc.id = cg_sb1.drug);||13422||@18-10@
/* (canc cg_canc, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_sb2.id < 584);||575||@18-11@
/* (canc cg_canc, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM canc cg_canc, sbond_3 cg_sb3 WHERE (cg_canc.id = cg_sb3.drug);||8||@18-12@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb2.id < 584);||30092||@18-13@
/* (sbond_1 cg_sb1, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_3 cg_sb3 WHERE (cg_sb1.drug = cg_sb3.drug);||120||@18-14@
/* (sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_sb2.drug = cg_sb3.drug) AND (cg_sb2.id < 584);||8||@18-15@
/* (atom cg_atm, canc cg_canc, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_1 cg_sb1 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb1.drug);||642488||@18-16@
/* (atom cg_atm, canc cg_canc, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb2.drug) AND (cg_sb2.id < 584);||19266||@18-17@
/* (atom cg_atm, canc cg_canc, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_3 cg_sb3 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb3.drug);||124||@18-18@
/* (atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb2.drug) AND (cg_sb2.id < 584);||1640912||@18-19@
/* (atom cg_atm, sbond_1 cg_sb1, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_3 cg_sb3 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb3.drug);||1920||@18-20@
/* (atom cg_atm, sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM atom cg_atm, sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_atm.drug = cg_sb2.drug) AND (cg_atm.drug = cg_sb3.drug) AND (cg_sb2.id < 584);||144||@18-21@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb2.drug) AND (cg_sb2.id < 584);||30092||@18-22@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_3 cg_sb3 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb3.drug);||120||@18-23@
/* (canc cg_canc, sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_canc.id = cg_sb3.drug) AND (cg_sb2.id < 584);||8||@18-24@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.drug = cg_sb3.drug) AND (cg_sb2.id < 584);||144||@18-25@
/* (atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_canc.id) AND (cg_canc.id = cg_sb1.drug) AND (cg_atm.drug = cg_sb2.drug) AND (cg_sb2.id < 584);||1640912||@18-26@
/* (atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_3 cg_sb3 WHERE (cg_atm.drug = cg_canc.id) AND (cg_canc.id = cg_sb1.drug) AND (cg_atm.drug = cg_sb3.drug);||1920||@18-27@
/* (atom cg_atm, canc cg_canc, sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_atm.drug = cg_canc.id) AND (cg_canc.id = cg_sb2.drug) AND (cg_atm.drug = cg_sb3.drug) AND (cg_sb2.id < 584);||144||@18-28@
/* (atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_sb1.drug = cg_sb2.drug) AND (cg_atm.drug = cg_sb3.drug) AND (cg_sb2.id < 584);||2592||@18-29@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb2.drug) AND (cg_canc.id = cg_sb3.drug) AND (cg_sb2.id < 584);||144||@18-30@
/* (atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_atm.drug = cg_canc.id) AND (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb2.drug) AND (cg_atm.drug = cg_sb3.drug) AND (cg_sb2.id < 584);||2592||@18-31@
SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.drug = cg_sb3.drug) AND (cg_sb2.id < 303);||144||@19-0@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1;||13562||@19-1@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2 WHERE (cg_sb2.id < 303);||302||@19-2@
/* (sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_3 cg_sb3;||12||@19-3@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb2.id < 303);||17484||@19-4@
/* (sbond_1 cg_sb1, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_3 cg_sb3 WHERE (cg_sb1.drug = cg_sb3.drug);||120||@19-5@
/* (sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_sb2.drug = cg_sb3.drug) AND (cg_sb2.id < 303);||8||@19-6@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.drug = cg_sb3.drug) AND (cg_sb2.id < 303);||144||@19-7@
SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.id < 5016) AND (cg_sb2.id < 617);||14196||@20-0@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1 WHERE (cg_sb1.id < 5016);||5015||@20-1@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2 WHERE (cg_sb2.id < 617);||616||@20-2@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.id < 5016) AND (cg_sb2.id < 617);||14196||@20-3@
SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.drug = cg_sb7.drug) AND (cg_sb1.id < 13400) AND (cg_sb2.id >= 463);||617512||@21-0@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1 WHERE (cg_sb1.id < 13400);||13399||@21-1@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2 WHERE (cg_sb2.id >= 463);||464||@21-2@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7;||4134||@21-3@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.id < 13400) AND (cg_sb2.id >= 463);||20282||@21-4@
/* (sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb7.drug) AND (cg_sb1.id < 13400);||170864||@21-5@
/* (sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb2.drug = cg_sb7.drug) AND (cg_sb2.id >= 463);||10032||@21-6@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.drug = cg_sb7.drug) AND (cg_sb1.id < 13400) AND (cg_sb2.id >= 463);||617512||@21-7@
SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.name = 'o');||48130||@22-0@
/* (atom cg_atm) */ SELECT COUNT(*) FROM atom cg_atm WHERE (cg_atm.name = 'o');||719||@22-1@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1;||13562||@22-2@
/* (atom cg_atm, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.name = 'o');||48130||@22-3@
SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb2.drug = cg_sb7.drug) AND (cg_sb2.id < 228) AND (cg_sb7.id < 995);||1932||@23-0@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2 WHERE (cg_sb2.id < 228);||227||@23-1@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7 WHERE (cg_sb7.id < 995);||994||@23-2@
/* (sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb2.drug = cg_sb7.drug) AND (cg_sb2.id < 228) AND (cg_sb7.id < 995);||1932||@23-3@
SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb2.drug = cg_sb7.drug) AND (cg_sb2.id < 738) AND (cg_sb7.id < 1334);||2652||@24-0@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2 WHERE (cg_sb2.id < 738);||737||@24-1@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7 WHERE (cg_sb7.id < 1334);||1333||@24-2@
/* (sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb2.drug = cg_sb7.drug) AND (cg_sb2.id < 738) AND (cg_sb7.id < 1334);||2652||@24-3@
SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.drug = cg_sb7.drug) AND (cg_sb2.id < 788) AND (cg_sb7.id < 2879);||695344||@25-0@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1;||13562||@25-1@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2 WHERE (cg_sb2.id < 788);||787||@25-2@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7 WHERE (cg_sb7.id < 2879);||2878||@25-3@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb2.id < 788);||40822||@25-4@
/* (sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb7.drug) AND (cg_sb7.id < 2879);||130212||@25-5@
/* (sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb2.drug = cg_sb7.drug) AND (cg_sb2.id < 788) AND (cg_sb7.id < 2879);||10908||@25-6@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.drug = cg_sb7.drug) AND (cg_sb2.id < 788) AND (cg_sb7.id < 2879);||695344||@25-7@
SELECT COUNT(*) FROM canc cg_canc, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb7.drug) AND (cg_sb7.id >= 1226) AND (cg_sb7.id < 3805);||2533||@26-0@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc;||329||@26-1@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7 WHERE (cg_sb7.id >= 1226) AND (cg_sb7.id < 3805);||2579||@26-2@
/* (canc cg_canc, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb7.drug) AND (cg_sb7.id >= 1226) AND (cg_sb7.id < 3805);||2533||@26-3@
SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_sb1.id >= 9641) AND (cg_sb1.id < 13398) AND (cg_sb7.id >= 3753) AND (cg_sb7.id < 4135);||10400||@27-0@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc;||329||@27-1@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1 WHERE (cg_sb1.id >= 9641) AND (cg_sb1.id < 13398);||3757||@27-2@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7 WHERE (cg_sb7.id >= 3753) AND (cg_sb7.id < 4135);||382||@27-3@
/* (canc cg_canc, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_sb1.id >= 9641) AND (cg_sb1.id < 13398);||3669||@27-4@
/* (canc cg_canc, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb7.drug) AND (cg_sb7.id >= 3753) AND (cg_sb7.id < 4135);||382||@27-5@
/* (sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb7.drug) AND (cg_sb1.id >= 9641) AND (cg_sb1.id < 13398) AND (cg_sb7.id >= 3753) AND (cg_sb7.id < 4135);||10400||@27-6@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_sb1.id >= 9641) AND (cg_sb1.id < 13398) AND (cg_sb7.id >= 3753) AND (cg_sb7.id < 4135);||10400||@27-7@
SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb2.id >= 742) AND (cg_sb2.id < 927);||6944||@28-0@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1;||13562||@28-1@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2 WHERE (cg_sb2.id >= 742) AND (cg_sb2.id < 927);||185||@28-2@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb2.id >= 742) AND (cg_sb2.id < 927);||6944||@28-3@
SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.id >= 2815) AND (cg_sb1.id < 8507);||19860||@29-0@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1 WHERE (cg_sb1.id >= 2815) AND (cg_sb1.id < 8507);||5692||@29-1@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2;||926||@29-2@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.id >= 2815) AND (cg_sb1.id < 8507);||19860||@29-3@
SELECT COUNT(*) FROM atom cg_atm, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb2.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.name = 'o') AND (cg_sb7.id >= 1522);||80566||@30-0@
/* (atom cg_atm) */ SELECT COUNT(*) FROM atom cg_atm WHERE (cg_atm.name = 'o');||719||@30-1@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2;||926||@30-2@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7 WHERE (cg_sb7.id >= 1522);||2613||@30-3@
/* (atom cg_atm, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_sb2.drug) AND (cg_atm.name = 'o');||3916||@30-4@
/* (atom cg_atm, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb7.drug) AND (cg_atm.name = 'o') AND (cg_sb7.id >= 1522);||7557||@30-5@
/* (sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb2.drug = cg_sb7.drug) AND (cg_sb7.id >= 1522);||11150||@30-6@
/* (atom cg_atm, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb2.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.name = 'o') AND (cg_sb7.id >= 1522);||80566||@30-7@
SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_sb1.id >= 4555) AND (cg_sb1.id < 9625);||43484||@31-0@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc;||329||@31-1@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1 WHERE (cg_sb1.id >= 4555) AND (cg_sb1.id < 9625);||5070||@31-2@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7;||4134||@31-3@
/* (canc cg_canc, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_sb1.id >= 4555) AND (cg_sb1.id < 9625);||5068||@31-4@
/* (canc cg_canc, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb7.drug);||4064||@31-5@
/* (sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb7.drug) AND (cg_sb1.id >= 4555) AND (cg_sb1.id < 9625);||43484||@31-6@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_sb1.id >= 4555) AND (cg_sb1.id < 9625);||43484||@31-7@
SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_canc.class = '1') AND (cg_sb2.id < 905);||9160||@32-0@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc WHERE (cg_canc.class = '1');||182||@32-1@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2 WHERE (cg_sb2.id < 905);||904||@32-2@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7;||4134||@32-3@
/* (canc cg_canc, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_canc.class = '1') AND (cg_sb2.id < 905);||450||@32-4@
/* (canc cg_canc, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb7.drug) AND (cg_canc.class = '1');||2314||@32-5@
/* (sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb2.drug = cg_sb7.drug) AND (cg_sb2.id < 905);||14480||@32-6@
/* (canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_canc.class = '1') AND (cg_sb2.id < 905);||9160||@32-7@
SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.class = '0') AND (cg_sb1.id < 4033);||2176||@33-0@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc WHERE (cg_canc.class = '0');||147||@33-1@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1 WHERE (cg_sb1.id < 4033);||4032||@33-2@
/* (canc cg_canc, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.class = '0') AND (cg_sb1.id < 4033);||2176||@33-3@
SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_1 cg_sb1 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb1.drug) AND (cg_atm.name = 'o') AND (cg_atm.charge = 'a0=-0_0175<x<=0_0615') AND (cg_canc.class = '1') AND (cg_sb1.id < 10657);||38||@34-0@
/* (atom cg_atm) */ SELECT COUNT(*) FROM atom cg_atm WHERE (cg_atm.name = 'o') AND (cg_atm.charge = 'a0=-0_0175<x<=0_0615');||1||@34-1@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc WHERE (cg_canc.class = '1');||182||@34-2@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1 WHERE (cg_sb1.id < 10657);||10656||@34-3@
/* (atom cg_atm, canc cg_canc) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.name = 'o') AND (cg_atm.charge = 'a0=-0_0175<x<=0_0615') AND (cg_canc.class = '1');||1||@34-4@
/* (atom cg_atm, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.name = 'o') AND (cg_atm.charge = 'a0=-0_0175<x<=0_0615') AND (cg_sb1.id < 10657);||38||@34-5@
/* (canc cg_canc, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.class = '1') AND (cg_sb1.id < 10657);||4754||@34-6@
/* (atom cg_atm, canc cg_canc, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_1 cg_sb1 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb1.drug) AND (cg_atm.name = 'o') AND (cg_atm.charge = 'a0=-0_0175<x<=0_0615') AND (cg_canc.class = '1') AND (cg_sb1.id < 10657);||38||@34-7@
SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb7.drug) AND (cg_atm.drug = cg_canc.id) AND (cg_canc.id = cg_sb2.drug) AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_atm.atomtype = '27') AND (cg_sb2.id >= 581) AND (cg_sb2.id < 894) AND (cg_sb7.id >= 1602);||1756||@35-0@
/* (atom cg_atm) */ SELECT COUNT(*) FROM atom cg_atm WHERE (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_atm.atomtype = '27');||3||@35-1@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc;||329||@35-2@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2 WHERE (cg_sb2.id >= 581) AND (cg_sb2.id < 894);||313||@35-3@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7 WHERE (cg_sb7.id >= 1602);||2533||@35-4@
/* (atom cg_atm, canc cg_canc) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_atm.atomtype = '27');||3||@35-5@
/* (atom cg_atm, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_sb2.drug) AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_atm.atomtype = '27') AND (cg_sb2.id >= 581) AND (cg_sb2.id < 894);||26||@35-6@
/* (atom cg_atm, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb7.drug) AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_atm.atomtype = '27') AND (cg_sb7.id >= 1602);||166||@35-7@
/* (canc cg_canc, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_sb2.id >= 581) AND (cg_sb2.id < 894);||295||@35-8@
/* (canc cg_canc, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb7.drug) AND (cg_sb7.id >= 1602);||2487||@35-9@
/* (sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb2.drug = cg_sb7.drug) AND (cg_sb2.id >= 581) AND (cg_sb2.id < 894) AND (cg_sb7.id >= 1602);||8740||@35-10@
/* (atom cg_atm, canc cg_canc, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb2.drug) AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_atm.atomtype = '27') AND (cg_sb2.id >= 581) AND (cg_sb2.id < 894);||26||@35-11@
/* (atom cg_atm, canc cg_canc, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_atm.atomtype = '27') AND (cg_sb7.id >= 1602);||166||@35-12@
/* (atom cg_atm, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb2.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_atm.atomtype = '27') AND (cg_sb2.id >= 581) AND (cg_sb2.id < 894) AND (cg_sb7.id >= 1602);||1756||@35-13@
/* (canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_sb2.id >= 581) AND (cg_sb2.id < 894) AND (cg_sb7.id >= 1602);||8740||@35-14@
/* (atom cg_atm, canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb2.drug) AND (cg_canc.id = cg_sb2.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_atm.atomtype = '27') AND (cg_sb2.id >= 581) AND (cg_sb2.id < 894) AND (cg_sb7.id >= 1602);||1756||@35-15@
SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb2.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.atomtype = '16') AND (cg_canc.class = '0') AND (cg_sb7.id >= 1560);||1008||@36-0@
/* (atom cg_atm) */ SELECT COUNT(*) FROM atom cg_atm WHERE (cg_atm.atomtype = '16');||115||@36-1@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc WHERE (cg_canc.class = '0');||147||@36-2@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2;||926||@36-3@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7 WHERE (cg_sb7.id >= 1560);||2575||@36-4@
/* (atom cg_atm, canc cg_canc) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.atomtype = '16') AND (cg_canc.class = '0');||50||@36-5@
/* (atom cg_atm, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_sb2.drug) AND (cg_atm.atomtype = '16');||628||@36-6@
/* (atom cg_atm, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb7.drug) AND (cg_atm.atomtype = '16') AND (cg_sb7.id >= 1560);||396||@36-7@
/* (canc cg_canc, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_canc.class = '0');||436||@36-8@
/* (canc cg_canc, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb7.drug) AND (cg_canc.class = '0') AND (cg_sb7.id >= 1560);||894||@36-9@
/* (sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb2.drug = cg_sb7.drug) AND (cg_sb7.id >= 1560);||11042||@36-10@
/* (atom cg_atm, canc cg_canc, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb2.drug) AND (cg_atm.atomtype = '16') AND (cg_canc.class = '0');||312||@36-11@
/* (atom cg_atm, canc cg_canc, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.atomtype = '16') AND (cg_canc.class = '0') AND (cg_sb7.id >= 1560);||168||@36-12@
/* (atom cg_atm, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb2.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.atomtype = '16') AND (cg_sb7.id >= 1560);||3264||@36-13@
/* (canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_canc.class = '0') AND (cg_sb7.id >= 1560);||3576||@36-14@
/* (atom cg_atm, canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb2.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.atomtype = '16') AND (cg_canc.class = '0') AND (cg_sb7.id >= 1560);||1008||@36-15@
SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb2.drug) AND (cg_canc.class = '1') AND (cg_sb1.id >= 3636) AND (cg_sb1.id < 8438) AND (cg_sb2.id < 743);||4532||@37-0@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc WHERE (cg_canc.class = '1');||182||@37-1@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1 WHERE (cg_sb1.id >= 3636) AND (cg_sb1.id < 8438);||4802||@37-2@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2 WHERE (cg_sb2.id < 743);||742||@37-3@
/* (canc cg_canc, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.class = '1') AND (cg_sb1.id >= 3636) AND (cg_sb1.id < 8438);||1993||@37-4@
/* (canc cg_canc, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_canc.class = '1') AND (cg_sb2.id < 743);||354||@37-5@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.id >= 3636) AND (cg_sb1.id < 8438) AND (cg_sb2.id < 743);||17228||@37-6@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb2.drug) AND (cg_canc.class = '1') AND (cg_sb1.id >= 3636) AND (cg_sb1.id < 8438) AND (cg_sb2.id < 743);||4532||@37-7@
SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb2.drug) AND (cg_canc.class = '1') AND (cg_sb2.id < 360);||6696||@38-0@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc WHERE (cg_canc.class = '1');||182||@38-1@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1;||13562||@38-2@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2 WHERE (cg_sb2.id < 360);||359||@38-3@
/* (canc cg_canc, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.class = '1');||6604||@38-4@
/* (canc cg_canc, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_canc.class = '1') AND (cg_sb2.id < 360);||136||@38-5@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb2.id < 360);||19878||@38-6@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb2.drug) AND (cg_canc.class = '1') AND (cg_sb2.id < 360);||6696||@38-7@
SELECT COUNT(*) FROM atom cg_atm, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_sb2.drug) AND (cg_atm.atomtype = '10') AND (cg_sb2.id >= 361) AND (cg_sb2.id < 552);||929||@39-0@
/* (atom cg_atm) */ SELECT COUNT(*) FROM atom cg_atm WHERE (cg_atm.atomtype = '10');||1157||@39-1@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2 WHERE (cg_sb2.id >= 361) AND (cg_sb2.id < 552);||191||@39-2@
/* (atom cg_atm, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_sb2.drug) AND (cg_atm.atomtype = '10') AND (cg_sb2.id >= 361) AND (cg_sb2.id < 552);||929||@39-3@
SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_1 cg_sb1 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb1.drug) AND (cg_atm.charge = 'a0=-0_1355<x<=-0_0175') AND (cg_atm.atomtype = '3') AND (cg_sb1.id >= 5946);||1578||@40-0@
/* (atom cg_atm) */ SELECT COUNT(*) FROM atom cg_atm WHERE (cg_atm.charge = 'a0=-0_1355<x<=-0_0175') AND (cg_atm.atomtype = '3');||33||@40-1@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc;||329||@40-2@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1 WHERE (cg_sb1.id >= 5946);||7617||@40-3@
/* (atom cg_atm, canc cg_canc) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.charge = 'a0=-0_1355<x<=-0_0175') AND (cg_atm.atomtype = '3');||33||@40-4@
/* (atom cg_atm, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.charge = 'a0=-0_1355<x<=-0_0175') AND (cg_atm.atomtype = '3') AND (cg_sb1.id >= 5946);||1578||@40-5@
/* (canc cg_canc, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_sb1.id >= 5946);||7527||@40-6@
/* (atom cg_atm, canc cg_canc, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_1 cg_sb1 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb1.drug) AND (cg_atm.charge = 'a0=-0_1355<x<=-0_0175') AND (cg_atm.atomtype = '3') AND (cg_sb1.id >= 5946);||1578||@40-7@
SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb2.drug) AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_sb1.id < 9771) AND (cg_sb2.id < 446);||242320||@41-0@
/* (atom cg_atm) */ SELECT COUNT(*) FROM atom cg_atm WHERE (cg_atm.charge = 'a0=0_0615<x<=0_1375');||1830||@41-1@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1 WHERE (cg_sb1.id < 9771);||9770||@41-2@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2 WHERE (cg_sb2.id < 446);||445||@41-3@
/* (atom cg_atm, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_sb1.id < 9771);||127660||@41-4@
/* (atom cg_atm, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_sb2.drug) AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_sb2.id < 446);||3210||@41-5@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.id < 9771) AND (cg_sb2.id < 446);||24968||@41-6@
/* (atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb2.drug) AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_sb1.id < 9771) AND (cg_sb2.id < 446);||242320||@41-7@
SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_sb2.id >= 196) AND (cg_sb2.id < 432) AND (cg_sb7.id < 2104);||2600||@42-0@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc;||329||@42-1@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2 WHERE (cg_sb2.id >= 196) AND (cg_sb2.id < 432);||236||@42-2@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7 WHERE (cg_sb7.id < 2104);||2103||@42-3@
/* (canc cg_canc, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_sb2.id >= 196) AND (cg_sb2.id < 432);||234||@42-4@
/* (canc cg_canc, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb7.drug) AND (cg_sb7.id < 2104);||2079||@42-5@
/* (sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb2.drug = cg_sb7.drug) AND (cg_sb2.id >= 196) AND (cg_sb2.id < 432) AND (cg_sb7.id < 2104);||2600||@42-6@
/* (canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_sb2.id >= 196) AND (cg_sb2.id < 432) AND (cg_sb7.id < 2104);||2600||@42-7@
SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb7.drug) AND (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb1.drug) AND (cg_atm.atomtype = '27') AND (cg_canc.class = '0');||42256||@43-0@
/* (atom cg_atm) */ SELECT COUNT(*) FROM atom cg_atm WHERE (cg_atm.atomtype = '27');||55||@43-1@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc WHERE (cg_canc.class = '0');||147||@43-2@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1;||13562||@43-3@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7;||4134||@43-4@
/* (atom cg_atm, canc cg_canc) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.atomtype = '27') AND (cg_canc.class = '0');||27||@43-5@
/* (atom cg_atm, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.atomtype = '27');||2718||@43-6@
/* (atom cg_atm, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb7.drug) AND (cg_atm.atomtype = '27');||2296||@43-7@
/* (canc cg_canc, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.class = '0');||6818||@43-8@
/* (canc cg_canc, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb7.drug) AND (cg_canc.class = '0');||1750||@43-9@
/* (sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb7.drug);||173060||@43-10@
/* (atom cg_atm, canc cg_canc, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_1 cg_sb1 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb1.drug) AND (cg_atm.atomtype = '27') AND (cg_canc.class = '0');||1174||@43-11@
/* (atom cg_atm, canc cg_canc, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.atomtype = '27') AND (cg_canc.class = '0');||920||@43-12@
/* (atom cg_atm, sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.atomtype = '27');||135632||@43-13@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_canc.class = '0');||75328||@43-14@
/* (atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb1.drug) AND (cg_canc.id = cg_sb1.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.atomtype = '27') AND (cg_canc.class = '0');||42256||@43-15@
SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb7.drug) AND (cg_canc.id = cg_sb3.drug) AND (cg_canc.id = cg_sb1.drug) AND (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.id < 4478) AND (cg_sb2.id < 351);||1728||@44-0@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc;||329||@44-1@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1 WHERE (cg_sb1.id < 4478);||4477||@44-2@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2 WHERE (cg_sb2.id < 351);||350||@44-3@
/* (sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_3 cg_sb3;||12||@44-4@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7;||4134||@44-5@
/* (canc cg_canc, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_sb1.id < 4478);||4427||@44-6@
/* (canc cg_canc, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_sb2.id < 351);||344||@44-7@
/* (canc cg_canc, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM canc cg_canc, sbond_3 cg_sb3 WHERE (cg_canc.id = cg_sb3.drug);||8||@44-8@
/* (canc cg_canc, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb7.drug);||4064||@44-9@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.id < 4478) AND (cg_sb2.id < 351);||12026||@44-10@
/* (sbond_1 cg_sb1, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_3 cg_sb3 WHERE (cg_sb1.drug = cg_sb3.drug) AND (cg_sb1.id < 4478);||72||@44-11@
/* (sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb7.drug) AND (cg_sb1.id < 4478);||46492||@44-12@
/* (sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_sb2.drug = cg_sb3.drug) AND (cg_sb2.id < 351);||8||@44-13@
/* (sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb2.drug = cg_sb7.drug) AND (cg_sb2.id < 351);||3964||@44-14@
/* (sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb3.drug = cg_sb7.drug);||96||@44-15@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb2.drug) AND (cg_sb1.id < 4478) AND (cg_sb2.id < 351);||12026||@44-16@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_3 cg_sb3 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb3.drug) AND (cg_sb1.id < 4478);||72||@44-17@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_sb1.id < 4478);||46492||@44-18@
/* (canc cg_canc, sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_canc.id = cg_sb3.drug) AND (cg_sb2.id < 351);||8||@44-19@
/* (canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_sb2.id < 351);||3964||@44-20@
/* (canc cg_canc, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb3.drug) AND (cg_canc.id = cg_sb7.drug);||96||@44-21@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.drug = cg_sb3.drug) AND (cg_sb1.id < 4478) AND (cg_sb2.id < 351);||144||@44-22@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.drug = cg_sb7.drug) AND (cg_sb1.id < 4478) AND (cg_sb2.id < 351);||130488||@44-23@
/* (sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb3.drug) AND (cg_sb3.drug = cg_sb7.drug) AND (cg_sb1.id < 4478);||864||@44-24@
/* (sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb2.drug = cg_sb3.drug) AND (cg_sb3.drug = cg_sb7.drug) AND (cg_sb2.id < 351);||96||@44-25@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb2.drug) AND (cg_canc.id = cg_sb3.drug) AND (cg_sb1.id < 4478) AND (cg_sb2.id < 351);||144||@44-26@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb2.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_sb1.id < 4478) AND (cg_sb2.id < 351);||130488||@44-27@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb3.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_sb1.id < 4478);||864||@44-28@
/* (canc cg_canc, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_canc.id = cg_sb3.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_sb2.id < 351);||96||@44-29@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.drug = cg_sb3.drug) AND (cg_sb2.drug = cg_sb3.drug) AND (cg_sb3.drug = cg_sb7.drug) AND (cg_sb1.id < 4478) AND (cg_sb2.id < 351);||1728||@44-30@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb2.drug) AND (cg_sb1.drug = cg_sb2.drug) AND (cg_canc.id = cg_sb3.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_sb1.id < 4478) AND (cg_sb2.id < 351);||1728||@44-31@
SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_3 cg_sb3 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb3.drug) AND (cg_sb1.id < 10566);||72||@45-0@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc;||329||@45-1@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1 WHERE (cg_sb1.id < 10566);||10565||@45-2@
/* (sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_3 cg_sb3;||12||@45-3@
/* (canc cg_canc, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_sb1.id < 10566);||10471||@45-4@
/* (canc cg_canc, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM canc cg_canc, sbond_3 cg_sb3 WHERE (cg_canc.id = cg_sb3.drug);||8||@45-5@
/* (sbond_1 cg_sb1, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_3 cg_sb3 WHERE (cg_sb1.drug = cg_sb3.drug) AND (cg_sb1.id < 10566);||72||@45-6@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_3 cg_sb3 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb3.drug) AND (cg_sb1.id < 10566);||72||@45-7@
SELECT COUNT(*) FROM atom cg_atm, sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_atm.drug = cg_sb2.drug) AND (cg_atm.drug = cg_sb3.drug) AND (cg_sb2.id < 889);||144||@46-0@
/* (atom cg_atm) */ SELECT COUNT(*) FROM atom cg_atm;||9064||@46-1@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2 WHERE (cg_sb2.id < 889);||888||@46-2@
/* (sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_3 cg_sb3;||12||@46-3@
/* (atom cg_atm, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_sb2.drug) AND (cg_sb2.id < 889);||31060||@46-4@
/* (atom cg_atm, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM atom cg_atm, sbond_3 cg_sb3 WHERE (cg_atm.drug = cg_sb3.drug);||124||@46-5@
/* (sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_sb2.drug = cg_sb3.drug) AND (cg_sb2.id < 889);||8||@46-6@
/* (atom cg_atm, sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM atom cg_atm, sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_atm.drug = cg_sb2.drug) AND (cg_atm.drug = cg_sb3.drug) AND (cg_sb2.id < 889);||144||@46-7@
SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb3.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.atomtype = '3') AND (cg_sb7.id < 1038);||4320||@47-0@
/* (atom cg_atm) */ SELECT COUNT(*) FROM atom cg_atm WHERE (cg_atm.atomtype = '3');||3597||@47-1@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1;||13562||@47-2@
/* (sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_3 cg_sb3;||12||@47-3@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7 WHERE (cg_sb7.id < 1038);||1037||@47-4@
/* (atom cg_atm, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.atomtype = '3');||302012||@47-5@
/* (atom cg_atm, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM atom cg_atm, sbond_3 cg_sb3 WHERE (cg_atm.drug = cg_sb3.drug) AND (cg_atm.atomtype = '3');||20||@47-6@
/* (atom cg_atm, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb7.drug) AND (cg_atm.atomtype = '3') AND (cg_sb7.id < 1038);||12218||@47-7@
/* (sbond_1 cg_sb1, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_3 cg_sb3 WHERE (cg_sb1.drug = cg_sb3.drug);||120||@47-8@
/* (sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb7.drug) AND (cg_sb7.id < 1038);||43386||@47-9@
/* (sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb3.drug = cg_sb7.drug) AND (cg_sb7.id < 1038);||48||@47-10@
/* (atom cg_atm, sbond_1 cg_sb1, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_3 cg_sb3 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb3.drug) AND (cg_atm.atomtype = '3');||360||@47-11@
/* (atom cg_atm, sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.atomtype = '3') AND (cg_sb7.id < 1038);||752620||@47-12@
/* (atom cg_atm, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb3.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.atomtype = '3') AND (cg_sb7.id < 1038);||240||@47-13@
/* (sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb3.drug) AND (cg_sb1.drug = cg_sb7.drug) AND (cg_sb7.id < 1038);||864||@47-14@
/* (atom cg_atm, sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb3.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.atomtype = '3') AND (cg_sb7.id < 1038);||4320||@47-15@
SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.class = '1') AND (cg_sb1.id < 9898);||4331||@48-0@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc WHERE (cg_canc.class = '1');||182||@48-1@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1 WHERE (cg_sb1.id < 9898);||9897||@48-2@
/* (canc cg_canc, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.class = '1') AND (cg_sb1.id < 9898);||4331||@48-3@
SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_canc.id) AND (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb2.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_sb1.id >= 6653) AND (cg_sb7.id >= 2606) AND (cg_sb7.id < 3555);||23334288||@49-0@
/* (atom cg_atm) */ SELECT COUNT(*) FROM atom cg_atm;||9064||@49-1@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc;||329||@49-2@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1 WHERE (cg_sb1.id >= 6653);||6910||@49-3@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2;||926||@49-4@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7 WHERE (cg_sb7.id >= 2606) AND (cg_sb7.id < 3555);||949||@49-5@
/* (atom cg_atm, canc cg_canc) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc WHERE (cg_atm.drug = cg_canc.id);||8982||@49-6@
/* (atom cg_atm, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_sb1.id >= 6653);||312706||@49-7@
/* (atom cg_atm, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_sb2.drug);||32424||@49-8@
/* (atom cg_atm, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb7.drug) AND (cg_sb7.id >= 2606) AND (cg_sb7.id < 3555);||32645||@49-9@
/* (canc cg_canc, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_sb1.id >= 6653);||6820||@49-10@
/* (canc cg_canc, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb2.drug);||900||@49-11@
/* (canc cg_canc, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb7.drug) AND (cg_sb7.id >= 2606) AND (cg_sb7.id < 3555);||913||@49-12@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.id >= 6653);||24948||@49-13@
/* (sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb7.drug) AND (cg_sb1.id >= 6653) AND (cg_sb7.id >= 2606) AND (cg_sb7.id < 3555);||38010||@49-14@
/* (sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb2.drug = cg_sb7.drug) AND (cg_sb7.id >= 2606) AND (cg_sb7.id < 3555);||4836||@49-15@
/* (atom cg_atm, canc cg_canc, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_1 cg_sb1 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb1.drug) AND (cg_sb1.id >= 6653);||312706||@49-16@
/* (atom cg_atm, canc cg_canc, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb2.drug);||32424||@49-17@
/* (atom cg_atm, canc cg_canc, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb7.drug) AND (cg_sb7.id >= 2606) AND (cg_sb7.id < 3555);||32645||@49-18@
/* (atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb2.drug) AND (cg_sb1.id >= 6653);||1467268||@49-19@
/* (atom cg_atm, sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_sb1.id >= 6653) AND (cg_sb7.id >= 2606) AND (cg_sb7.id < 3555);||1929514||@49-20@
/* (atom cg_atm, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb2.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_sb7.id >= 2606) AND (cg_sb7.id < 3555);||284676||@49-21@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb2.drug) AND (cg_sb1.id >= 6653);||24948||@49-22@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_sb1.id >= 6653) AND (cg_sb7.id >= 2606) AND (cg_sb7.id < 3555);||38010||@49-23@
/* (canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_sb7.id >= 2606) AND (cg_sb7.id < 3555);||4836||@49-24@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.drug = cg_sb7.drug) AND (cg_sb1.id >= 6653) AND (cg_sb7.id >= 2606) AND (cg_sb7.id < 3555);||325376||@49-25@
/* (atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_canc.id) AND (cg_canc.id = cg_sb1.drug) AND (cg_atm.drug = cg_sb2.drug) AND (cg_sb1.id >= 6653);||1467268||@49-26@
/* (atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_canc.id) AND (cg_canc.id = cg_sb1.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_sb1.id >= 6653) AND (cg_sb7.id >= 2606) AND (cg_sb7.id < 3555);||1929514||@49-27@
/* (atom cg_atm, canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_canc.id) AND (cg_canc.id = cg_sb2.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_sb7.id >= 2606) AND (cg_sb7.id < 3555);||284676||@49-28@
/* (atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_sb1.drug = cg_sb2.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_sb1.id >= 6653) AND (cg_sb7.id >= 2606) AND (cg_sb7.id < 3555);||23334288||@49-29@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb2.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_sb1.id >= 6653) AND (cg_sb7.id >= 2606) AND (cg_sb7.id < 3555);||325376||@49-30@
/* (atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_canc.id) AND (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb2.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_sb1.id >= 6653) AND (cg_sb7.id >= 2606) AND (cg_sb7.id < 3555);||23334288||@49-31@
SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_3 cg_sb3 WHERE (cg_sb1.drug = cg_sb3.drug) AND (cg_sb1.id < 12130);||72||@50-0@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1 WHERE (cg_sb1.id < 12130);||12129||@50-1@
/* (sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_3 cg_sb3;||12||@50-2@
/* (sbond_1 cg_sb1, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_3 cg_sb3 WHERE (cg_sb1.drug = cg_sb3.drug) AND (cg_sb1.id < 12130);||72||@50-3@
SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb3.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_sb1.id < 12653);||864||@51-0@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc;||329||@51-1@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1 WHERE (cg_sb1.id < 12653);||12652||@51-2@
/* (sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_3 cg_sb3;||12||@51-3@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7;||4134||@51-4@
/* (canc cg_canc, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_sb1.id < 12653);||12512||@51-5@
/* (canc cg_canc, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM canc cg_canc, sbond_3 cg_sb3 WHERE (cg_canc.id = cg_sb3.drug);||8||@51-6@
/* (canc cg_canc, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb7.drug);||4064||@51-7@
/* (sbond_1 cg_sb1, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_3 cg_sb3 WHERE (cg_sb1.drug = cg_sb3.drug) AND (cg_sb1.id < 12653);||72||@51-8@
/* (sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb7.drug) AND (cg_sb1.id < 12653);||157552||@51-9@
/* (sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb3.drug = cg_sb7.drug);||96||@51-10@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_3 cg_sb3 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb3.drug) AND (cg_sb1.id < 12653);||72||@51-11@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_sb1.id < 12653);||157552||@51-12@
/* (canc cg_canc, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb3.drug) AND (cg_canc.id = cg_sb7.drug);||96||@51-13@
/* (sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb3.drug) AND (cg_sb1.drug = cg_sb7.drug) AND (cg_sb1.id < 12653);||864||@51-14@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb3.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_sb1.id < 12653);||864||@51-15@
SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb2.drug = cg_sb7.drug) AND (cg_sb7.id < 2206);||5648||@52-0@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2;||926||@52-1@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7 WHERE (cg_sb7.id < 2206);||2205||@52-2@
/* (sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb2.drug = cg_sb7.drug) AND (cg_sb7.id < 2206);||5648||@52-3@
SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb2.drug) AND (cg_atm.drug = cg_sb3.drug) AND (cg_atm.charge = 'a0=-0_1355<x<=-0_0175') AND (cg_sb1.id < 12387);||720||@53-0@
/* (atom cg_atm) */ SELECT COUNT(*) FROM atom cg_atm WHERE (cg_atm.charge = 'a0=-0_1355<x<=-0_0175');||1814||@53-1@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1 WHERE (cg_sb1.id < 12387);||12386||@53-2@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2;||926||@53-3@
/* (sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_3 cg_sb3;||12||@53-4@
/* (atom cg_atm, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.charge = 'a0=-0_1355<x<=-0_0175') AND (cg_sb1.id < 12387);||104844||@53-5@
/* (atom cg_atm, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_sb2.drug) AND (cg_atm.charge = 'a0=-0_1355<x<=-0_0175');||6002||@53-6@
/* (atom cg_atm, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM atom cg_atm, sbond_3 cg_sb3 WHERE (cg_atm.drug = cg_sb3.drug) AND (cg_atm.charge = 'a0=-0_1355<x<=-0_0175');||36||@53-7@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.id < 12387);||43008||@53-8@
/* (sbond_1 cg_sb1, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_3 cg_sb3 WHERE (cg_sb1.drug = cg_sb3.drug) AND (cg_sb1.id < 12387);||72||@53-9@
/* (sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_sb2.drug = cg_sb3.drug);||8||@53-10@
/* (atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb2.drug) AND (cg_atm.charge = 'a0=-0_1355<x<=-0_0175') AND (cg_sb1.id < 12387);||422888||@53-11@
/* (atom cg_atm, sbond_1 cg_sb1, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_3 cg_sb3 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb3.drug) AND (cg_atm.charge = 'a0=-0_1355<x<=-0_0175') AND (cg_sb1.id < 12387);||360||@53-12@
/* (atom cg_atm, sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM atom cg_atm, sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_atm.drug = cg_sb2.drug) AND (cg_atm.drug = cg_sb3.drug) AND (cg_atm.charge = 'a0=-0_1355<x<=-0_0175');||40||@53-13@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.drug = cg_sb3.drug) AND (cg_sb1.id < 12387);||144||@53-14@
/* (atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb2.drug) AND (cg_atm.drug = cg_sb3.drug) AND (cg_atm.charge = 'a0=-0_1355<x<=-0_0175') AND (cg_sb1.id < 12387);||720||@53-15@
SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb7.drug) AND (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb1.drug) AND (cg_atm.charge = 'a0=-0_1355<x<=-0_0175') AND (cg_atm.atomtype = '37') AND (cg_canc.class = '0');||1056||@54-0@
/* (atom cg_atm) */ SELECT COUNT(*) FROM atom cg_atm WHERE (cg_atm.charge = 'a0=-0_1355<x<=-0_0175') AND (cg_atm.atomtype = '37');||2||@54-1@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc WHERE (cg_canc.class = '0');||147||@54-2@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1;||13562||@54-3@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7;||4134||@54-4@
/* (atom cg_atm, canc cg_canc) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.charge = 'a0=-0_1355<x<=-0_0175') AND (cg_atm.atomtype = '37') AND (cg_canc.class = '0');||2||@54-5@
/* (atom cg_atm, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.charge = 'a0=-0_1355<x<=-0_0175') AND (cg_atm.atomtype = '37');||88||@54-6@
/* (atom cg_atm, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb7.drug) AND (cg_atm.charge = 'a0=-0_1355<x<=-0_0175') AND (cg_atm.atomtype = '37');||24||@54-7@
/* (canc cg_canc, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.class = '0');||6818||@54-8@
/* (canc cg_canc, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb7.drug) AND (cg_canc.class = '0');||1750||@54-9@
/* (sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb7.drug);||173060||@54-10@
/* (atom cg_atm, canc cg_canc, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_1 cg_sb1 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb1.drug) AND (cg_atm.charge = 'a0=-0_1355<x<=-0_0175') AND (cg_atm.atomtype = '37') AND (cg_canc.class = '0');||88||@54-11@
/* (atom cg_atm, canc cg_canc, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.charge = 'a0=-0_1355<x<=-0_0175') AND (cg_atm.atomtype = '37') AND (cg_canc.class = '0');||24||@54-12@
/* (atom cg_atm, sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.charge = 'a0=-0_1355<x<=-0_0175') AND (cg_atm.atomtype = '37');||1056||@54-13@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_canc.class = '0');||75328||@54-14@
/* (atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb1.drug) AND (cg_canc.id = cg_sb1.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.charge = 'a0=-0_1355<x<=-0_0175') AND (cg_atm.atomtype = '37') AND (cg_canc.class = '0');||1056||@54-15@
SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb7.drug) AND (cg_canc.id = cg_sb1.drug) AND (cg_sb1.drug = cg_sb2.drug) AND (cg_canc.class = '0') AND (cg_sb2.id >= 422) AND (cg_sb2.id < 846) AND (cg_sb7.id < 4067);||71616||@55-0@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc WHERE (cg_canc.class = '0');||147||@55-1@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1;||13562||@55-2@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2 WHERE (cg_sb2.id >= 422) AND (cg_sb2.id < 846);||424||@55-3@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7 WHERE (cg_sb7.id < 4067);||4066||@55-4@
/* (canc cg_canc, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.class = '0');||6818||@55-5@
/* (canc cg_canc, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_canc.class = '0') AND (cg_sb2.id >= 422) AND (cg_sb2.id < 846);||142||@55-6@
/* (canc cg_canc, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb7.drug) AND (cg_canc.class = '0') AND (cg_sb7.id < 4067);||1750||@55-7@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb2.id >= 422) AND (cg_sb2.id < 846);||18700||@55-8@
/* (sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb7.drug) AND (cg_sb7.id < 4067);||170964||@55-9@
/* (sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb2.drug = cg_sb7.drug) AND (cg_sb2.id >= 422) AND (cg_sb2.id < 846) AND (cg_sb7.id < 4067);||8332||@55-10@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb2.drug) AND (cg_canc.class = '0') AND (cg_sb2.id >= 422) AND (cg_sb2.id < 846);||7872||@55-11@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_canc.class = '0') AND (cg_sb7.id < 4067);||75328||@55-12@
/* (canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_canc.class = '0') AND (cg_sb2.id >= 422) AND (cg_sb2.id < 846) AND (cg_sb7.id < 4067);||1512||@55-13@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.drug = cg_sb7.drug) AND (cg_sb2.id >= 422) AND (cg_sb2.id < 846) AND (cg_sb7.id < 4067);||522224||@55-14@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb2.drug) AND (cg_sb1.drug = cg_sb2.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_canc.class = '0') AND (cg_sb2.id >= 422) AND (cg_sb2.id < 846) AND (cg_sb7.id < 4067);||71616||@55-15@
SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb2.drug) AND (cg_canc.class = '0') AND (cg_sb2.id < 242);||9292||@56-0@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc WHERE (cg_canc.class = '0');||147||@56-1@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1;||13562||@56-2@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2 WHERE (cg_sb2.id < 242);||241||@56-3@
/* (canc cg_canc, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.class = '0');||6818||@56-4@
/* (canc cg_canc, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_canc.class = '0') AND (cg_sb2.id < 242);||142||@56-5@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb2.id < 242);||14518||@56-6@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb2.drug) AND (cg_canc.class = '0') AND (cg_sb2.id < 242);||9292||@56-7@
SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_canc.class = '1') AND (cg_sb1.id >= 6923) AND (cg_sb1.id < 12257) AND (cg_sb7.id < 2283);||18396||@57-0@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc WHERE (cg_canc.class = '1');||182||@57-1@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1 WHERE (cg_sb1.id >= 6923) AND (cg_sb1.id < 12257);||5334||@57-2@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7 WHERE (cg_sb7.id < 2283);||2282||@57-3@
/* (canc cg_canc, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.class = '1') AND (cg_sb1.id >= 6923) AND (cg_sb1.id < 12257);||3176||@57-4@
/* (canc cg_canc, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb7.drug) AND (cg_canc.class = '1') AND (cg_sb7.id < 2283);||1122||@57-5@
/* (sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb7.drug) AND (cg_sb1.id >= 6923) AND (cg_sb1.id < 12257) AND (cg_sb7.id < 2283);||26292||@57-6@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_canc.class = '1') AND (cg_sb1.id >= 6923) AND (cg_sb1.id < 12257) AND (cg_sb7.id < 2283);||18396||@57-7@
SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb2.drug) AND (cg_atm.name = 'h') AND (cg_sb1.id >= 5671) AND (cg_sb2.id >= 332);||712120||@58-0@
/* (atom cg_atm) */ SELECT COUNT(*) FROM atom cg_atm WHERE (cg_atm.name = 'h');||4060||@58-1@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1 WHERE (cg_sb1.id >= 5671);||7892||@58-2@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2 WHERE (cg_sb2.id >= 332);||595||@58-3@
/* (atom cg_atm, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.name = 'h') AND (cg_sb1.id >= 5671);||172038||@58-4@
/* (atom cg_atm, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_sb2.drug) AND (cg_atm.name = 'h') AND (cg_sb2.id >= 332);||8102||@58-5@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.id >= 5671) AND (cg_sb2.id >= 332);||27532||@58-6@
/* (atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb2.drug) AND (cg_atm.name = 'h') AND (cg_sb1.id >= 5671) AND (cg_sb2.id >= 332);||712120||@58-7@
SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb7.drug) AND (cg_sb7.id < 2799);||125276||@59-0@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1;||13562||@59-1@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7 WHERE (cg_sb7.id < 2799);||2798||@59-2@
/* (sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb7.drug) AND (cg_sb7.id < 2799);||125276||@59-3@
SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb7.drug) AND (cg_atm.drug = cg_sb2.drug) AND (cg_canc.id = cg_sb2.drug) AND (cg_atm.atomtype = '51') AND (cg_canc.class = '1') AND (cg_sb7.id < 956);||844||@60-0@
/* (atom cg_atm) */ SELECT COUNT(*) FROM atom cg_atm WHERE (cg_atm.atomtype = '51');||71||@60-1@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc WHERE (cg_canc.class = '1');||182||@60-2@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2;||926||@60-3@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7 WHERE (cg_sb7.id < 956);||955||@60-4@
/* (atom cg_atm, canc cg_canc) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.atomtype = '51') AND (cg_canc.class = '1');||31||@60-5@
/* (atom cg_atm, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_sb2.drug) AND (cg_atm.atomtype = '51');||322||@60-6@
/* (atom cg_atm, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb7.drug) AND (cg_atm.atomtype = '51') AND (cg_sb7.id < 956);||290||@60-7@
/* (canc cg_canc, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_canc.class = '1');||464||@60-8@
/* (canc cg_canc, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb7.drug) AND (cg_canc.class = '1') AND (cg_sb7.id < 956);||408||@60-9@
/* (sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb2.drug = cg_sb7.drug) AND (cg_sb7.id < 956);||1844||@60-10@
/* (atom cg_atm, canc cg_canc, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb2.drug) AND (cg_atm.atomtype = '51') AND (cg_canc.class = '1');||126||@60-11@
/* (atom cg_atm, canc cg_canc, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.atomtype = '51') AND (cg_canc.class = '1') AND (cg_sb7.id < 956);||194||@60-12@
/* (atom cg_atm, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb2.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.atomtype = '51') AND (cg_sb7.id < 956);||1180||@60-13@
/* (canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_sb2.drug = cg_sb7.drug) AND (cg_canc.class = '1') AND (cg_sb7.id < 956);||1004||@60-14@
/* (atom cg_atm, canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb2.drug) AND (cg_canc.id = cg_sb2.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.atomtype = '51') AND (cg_canc.class = '1') AND (cg_sb7.id < 956);||844||@60-15@
SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb3.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.charge = 'a0=-0_1355<x<=-0_0175') AND (cg_sb7.id < 1855);||4320||@61-0@
/* (atom cg_atm) */ SELECT COUNT(*) FROM atom cg_atm WHERE (cg_atm.charge = 'a0=-0_1355<x<=-0_0175');||1814||@61-1@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1;||13562||@61-2@
/* (sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_3 cg_sb3;||12||@61-3@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7 WHERE (cg_sb7.id < 1855);||1854||@61-4@
/* (atom cg_atm, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.charge = 'a0=-0_1355<x<=-0_0175');||113980||@61-5@
/* (atom cg_atm, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM atom cg_atm, sbond_3 cg_sb3 WHERE (cg_atm.drug = cg_sb3.drug) AND (cg_atm.charge = 'a0=-0_1355<x<=-0_0175');||36||@61-6@
/* (atom cg_atm, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb7.drug) AND (cg_atm.charge = 'a0=-0_1355<x<=-0_0175') AND (cg_sb7.id < 1855);||13256||@61-7@
/* (sbond_1 cg_sb1, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_3 cg_sb3 WHERE (cg_sb1.drug = cg_sb3.drug);||120||@61-8@
/* (sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb7.drug) AND (cg_sb7.id < 1855);||81396||@61-9@
/* (sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb3.drug = cg_sb7.drug) AND (cg_sb7.id < 1855);||48||@61-10@
/* (atom cg_atm, sbond_1 cg_sb1, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_3 cg_sb3 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb3.drug) AND (cg_atm.charge = 'a0=-0_1355<x<=-0_0175');||552||@61-11@
/* (atom cg_atm, sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.charge = 'a0=-0_1355<x<=-0_0175') AND (cg_sb7.id < 1855);||774288||@61-12@
/* (atom cg_atm, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb3.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.charge = 'a0=-0_1355<x<=-0_0175') AND (cg_sb7.id < 1855);||240||@61-13@
/* (sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb3.drug) AND (cg_sb1.drug = cg_sb7.drug) AND (cg_sb7.id < 1855);||864||@61-14@
/* (atom cg_atm, sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb3.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.charge = 'a0=-0_1355<x<=-0_0175') AND (cg_sb7.id < 1855);||4320||@61-15@
SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb3.drug) AND (cg_sb1.drug = cg_sb7.drug) AND (cg_sb1.id >= 12105) AND (cg_sb1.id < 13563) AND (cg_sb7.id >= 2343);||576||@62-0@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1 WHERE (cg_sb1.id >= 12105) AND (cg_sb1.id < 13563);||1458||@62-1@
/* (sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_3 cg_sb3;||12||@62-2@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7 WHERE (cg_sb7.id >= 2343);||1792||@62-3@
/* (sbond_1 cg_sb1, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_3 cg_sb3 WHERE (cg_sb1.drug = cg_sb3.drug) AND (cg_sb1.id >= 12105) AND (cg_sb1.id < 13563);||48||@62-4@
/* (sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb7.drug) AND (cg_sb1.id >= 12105) AND (cg_sb1.id < 13563) AND (cg_sb7.id >= 2343);||28248||@62-5@
/* (sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb3.drug = cg_sb7.drug) AND (cg_sb7.id >= 2343);||48||@62-6@
/* (sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb3.drug) AND (cg_sb1.drug = cg_sb7.drug) AND (cg_sb1.id >= 12105) AND (cg_sb1.id < 13563) AND (cg_sb7.id >= 2343);||576||@62-7@
SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb3.drug) AND (cg_sb1.drug = cg_sb7.drug) AND (cg_sb7.id >= 2761) AND (cg_sb7.id < 4133);||576||@63-0@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1;||13562||@63-1@
/* (sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_3 cg_sb3;||12||@63-2@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7 WHERE (cg_sb7.id >= 2761) AND (cg_sb7.id < 4133);||1372||@63-3@
/* (sbond_1 cg_sb1, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_3 cg_sb3 WHERE (cg_sb1.drug = cg_sb3.drug);||120||@63-4@
/* (sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb7.drug) AND (cg_sb7.id >= 2761) AND (cg_sb7.id < 4133);||51296||@63-5@
/* (sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb3.drug = cg_sb7.drug) AND (cg_sb7.id >= 2761) AND (cg_sb7.id < 4133);||48||@63-6@
/* (sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb3.drug) AND (cg_sb1.drug = cg_sb7.drug) AND (cg_sb7.id >= 2761) AND (cg_sb7.id < 4133);||576||@63-7@
SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb7.drug) AND (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb1.drug) AND (cg_atm.charge = 'a0=-0_1355<x<=-0_0175') AND (cg_atm.atomtype = '191') AND (cg_sb1.id < 12194) AND (cg_sb7.id >= 1221) AND (cg_sb7.id < 3469);||2496||@64-0@
/* (atom cg_atm) */ SELECT COUNT(*) FROM atom cg_atm WHERE (cg_atm.charge = 'a0=-0_1355<x<=-0_0175') AND (cg_atm.atomtype = '191');||20||@64-1@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc;||329||@64-2@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1 WHERE (cg_sb1.id < 12194);||12193||@64-3@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7 WHERE (cg_sb7.id >= 1221) AND (cg_sb7.id < 3469);||2248||@64-4@
/* (atom cg_atm, canc cg_canc) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.charge = 'a0=-0_1355<x<=-0_0175') AND (cg_atm.atomtype = '191');||20||@64-5@
/* (atom cg_atm, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.charge = 'a0=-0_1355<x<=-0_0175') AND (cg_atm.atomtype = '191') AND (cg_sb1.id < 12194);||864||@64-6@
/* (atom cg_atm, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb7.drug) AND (cg_atm.charge = 'a0=-0_1355<x<=-0_0175') AND (cg_atm.atomtype = '191') AND (cg_sb7.id >= 1221) AND (cg_sb7.id < 3469);||48||@64-7@
/* (canc cg_canc, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_sb1.id < 12194);||12053||@64-8@
/* (canc cg_canc, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb7.drug) AND (cg_sb7.id >= 1221) AND (cg_sb7.id < 3469);||2202||@64-9@
/* (sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb7.drug) AND (cg_sb1.id < 12194) AND (cg_sb7.id >= 1221) AND (cg_sb7.id < 3469);||92952||@64-10@
/* (atom cg_atm, canc cg_canc, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_1 cg_sb1 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb1.drug) AND (cg_atm.charge = 'a0=-0_1355<x<=-0_0175') AND (cg_atm.atomtype = '191') AND (cg_sb1.id < 12194);||864||@64-11@
/* (atom cg_atm, canc cg_canc, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.charge = 'a0=-0_1355<x<=-0_0175') AND (cg_atm.atomtype = '191') AND (cg_sb7.id >= 1221) AND (cg_sb7.id < 3469);||48||@64-12@
/* (atom cg_atm, sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.charge = 'a0=-0_1355<x<=-0_0175') AND (cg_atm.atomtype = '191') AND (cg_sb1.id < 12194) AND (cg_sb7.id >= 1221) AND (cg_sb7.id < 3469);||2496||@64-13@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_sb1.id < 12194) AND (cg_sb7.id >= 1221) AND (cg_sb7.id < 3469);||92952||@64-14@
/* (atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb1.drug) AND (cg_canc.id = cg_sb1.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.charge = 'a0=-0_1355<x<=-0_0175') AND (cg_atm.atomtype = '191') AND (cg_sb1.id < 12194) AND (cg_sb7.id >= 1221) AND (cg_sb7.id < 3469);||2496||@64-15@
SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb7.drug) AND (cg_sb1.id >= 5422) AND (cg_sb7.id < 2690);||56576||@65-0@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1 WHERE (cg_sb1.id >= 5422);||8141||@65-1@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7 WHERE (cg_sb7.id < 2690);||2689||@65-2@
/* (sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb7.drug) AND (cg_sb1.id >= 5422) AND (cg_sb7.id < 2690);||56576||@65-3@
SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb1.drug) AND (cg_canc.id = cg_sb3.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_atm.name = 'c') AND (cg_canc.class = '0') AND (cg_sb1.id < 8024) AND (cg_sb7.id < 891);||864||@66-0@
/* (atom cg_atm) */ SELECT COUNT(*) FROM atom cg_atm WHERE (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_atm.name = 'c');||213||@66-1@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc WHERE (cg_canc.class = '0');||147||@66-2@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1 WHERE (cg_sb1.id < 8024);||8023||@66-3@
/* (sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_3 cg_sb3;||12||@66-4@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7 WHERE (cg_sb7.id < 891);||890||@66-5@
/* (atom cg_atm, canc cg_canc) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_atm.name = 'c') AND (cg_canc.class = '0');||97||@66-6@
/* (atom cg_atm, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_atm.name = 'c') AND (cg_sb1.id < 8024);||10377||@66-7@
/* (atom cg_atm, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM atom cg_atm, sbond_3 cg_sb3 WHERE (cg_atm.drug = cg_sb3.drug) AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_atm.name = 'c');||4||@66-8@
/* (atom cg_atm, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb7.drug) AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_atm.name = 'c') AND (cg_sb7.id < 891);||504||@66-9@
/* (canc cg_canc, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.class = '0') AND (cg_sb1.id < 8024);||4213||@66-10@
/* (canc cg_canc, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM canc cg_canc, sbond_3 cg_sb3 WHERE (cg_canc.id = cg_sb3.drug) AND (cg_canc.class = '0');||4||@66-11@
/* (canc cg_canc, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb7.drug) AND (cg_canc.class = '0') AND (cg_sb7.id < 891);||480||@66-12@
/* (sbond_1 cg_sb1, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_3 cg_sb3 WHERE (cg_sb1.drug = cg_sb3.drug) AND (cg_sb1.id < 8024);||72||@66-13@
/* (sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb7.drug) AND (cg_sb1.id < 8024) AND (cg_sb7.id < 891);||37252||@66-14@
/* (sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb3.drug = cg_sb7.drug) AND (cg_sb7.id < 891);||48||@66-15@
/* (atom cg_atm, canc cg_canc, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_1 cg_sb1 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb1.drug) AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_atm.name = 'c') AND (cg_canc.class = '0') AND (cg_sb1.id < 8024);||4599||@66-16@
/* (atom cg_atm, canc cg_canc, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_3 cg_sb3 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb3.drug) AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_atm.name = 'c') AND (cg_canc.class = '0');||4||@66-17@
/* (atom cg_atm, canc cg_canc, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_atm.name = 'c') AND (cg_canc.class = '0') AND (cg_sb7.id < 891);||216||@66-18@
/* (atom cg_atm, sbond_1 cg_sb1, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_3 cg_sb3 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb3.drug) AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_atm.name = 'c') AND (cg_sb1.id < 8024);||72||@66-19@
/* (atom cg_atm, sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_atm.name = 'c') AND (cg_sb1.id < 8024) AND (cg_sb7.id < 891);||48024||@66-20@
/* (atom cg_atm, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb3.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_atm.name = 'c') AND (cg_sb7.id < 891);||48||@66-21@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_3 cg_sb3 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb3.drug) AND (cg_canc.class = '0') AND (cg_sb1.id < 8024);||72||@66-22@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_canc.class = '0') AND (cg_sb1.id < 8024) AND (cg_sb7.id < 891);||19416||@66-23@
/* (canc cg_canc, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb3.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_canc.class = '0') AND (cg_sb7.id < 891);||48||@66-24@
/* (sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb3.drug) AND (cg_sb1.drug = cg_sb7.drug) AND (cg_sb1.id < 8024) AND (cg_sb7.id < 891);||864||@66-25@
/* (atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_3 cg_sb3 WHERE (cg_atm.drug = cg_canc.id) AND (cg_canc.id = cg_sb1.drug) AND (cg_atm.drug = cg_sb3.drug) AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_atm.name = 'c') AND (cg_canc.class = '0') AND (cg_sb1.id < 8024);||72||@66-26@
/* (atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_canc.id) AND (cg_canc.id = cg_sb1.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_atm.name = 'c') AND (cg_canc.class = '0') AND (cg_sb1.id < 8024) AND (cg_sb7.id < 891);||16248||@66-27@
/* (atom cg_atm, canc cg_canc, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_canc.id) AND (cg_canc.id = cg_sb3.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_atm.name = 'c') AND (cg_canc.class = '0') AND (cg_sb7.id < 891);||48||@66-28@
/* (atom cg_atm, sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb3.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_atm.name = 'c') AND (cg_sb1.id < 8024) AND (cg_sb7.id < 891);||864||@66-29@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb3.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_canc.class = '0') AND (cg_sb1.id < 8024) AND (cg_sb7.id < 891);||864||@66-30@
/* (atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb1.drug) AND (cg_canc.id = cg_sb3.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_atm.name = 'c') AND (cg_canc.class = '0') AND (cg_sb1.id < 8024) AND (cg_sb7.id < 891);||864||@66-31@
SELECT COUNT(*) FROM atom cg_atm, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb7.drug) AND (cg_atm.charge = 'a0=-0_0175<x<=0_0615') AND (cg_sb7.id >= 2261) AND (cg_sb7.id < 3282);||4588||@67-0@
/* (atom cg_atm) */ SELECT COUNT(*) FROM atom cg_atm WHERE (cg_atm.charge = 'a0=-0_0175<x<=0_0615');||1810||@67-1@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7 WHERE (cg_sb7.id >= 2261) AND (cg_sb7.id < 3282);||1021||@67-2@
/* (atom cg_atm, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb7.drug) AND (cg_atm.charge = 'a0=-0_0175<x<=0_0615') AND (cg_sb7.id >= 2261) AND (cg_sb7.id < 3282);||4588||@67-3@
SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_sb2.drug) AND (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb1.drug) AND (cg_atm.name = 's') AND (cg_canc.class = '0') AND (cg_sb2.id >= 212);||19404||@68-0@
/* (atom cg_atm) */ SELECT COUNT(*) FROM atom cg_atm WHERE (cg_atm.name = 's');||91||@68-1@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc WHERE (cg_canc.class = '0');||147||@68-2@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1;||13562||@68-3@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2 WHERE (cg_sb2.id >= 212);||715||@68-4@
/* (atom cg_atm, canc cg_canc) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.name = 's') AND (cg_canc.class = '0');||60||@68-5@
/* (atom cg_atm, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.name = 's');||5294||@68-6@
/* (atom cg_atm, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_sb2.drug) AND (cg_atm.name = 's') AND (cg_sb2.id >= 212);||490||@68-7@
/* (canc cg_canc, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.class = '0');||6818||@68-8@
/* (canc cg_canc, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_canc.class = '0') AND (cg_sb2.id >= 212);||313||@68-9@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb2.id >= 212);||35174||@68-10@
/* (atom cg_atm, canc cg_canc, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_1 cg_sb1 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb1.drug) AND (cg_atm.name = 's') AND (cg_canc.class = '0');||3848||@68-11@
/* (atom cg_atm, canc cg_canc, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb2.drug) AND (cg_atm.name = 's') AND (cg_canc.class = '0') AND (cg_sb2.id >= 212);||282||@68-12@
/* (atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb2.drug) AND (cg_atm.name = 's') AND (cg_sb2.id >= 212);||34924||@68-13@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb2.drug) AND (cg_canc.class = '0') AND (cg_sb2.id >= 212);||19102||@68-14@
/* (atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb1.drug) AND (cg_canc.id = cg_sb1.drug) AND (cg_atm.drug = cg_sb2.drug) AND (cg_atm.name = 's') AND (cg_canc.class = '0') AND (cg_sb2.id >= 212);||19404||@68-15@
SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb7.drug) AND (cg_sb1.id < 3847);||40228||@69-0@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1 WHERE (cg_sb1.id < 3847);||3846||@69-1@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7;||4134||@69-2@
/* (sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb7.drug) AND (cg_sb1.id < 3847);||40228||@69-3@
SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb2.drug) AND (cg_canc.class = '0') AND (cg_sb2.id >= 608) AND (cg_sb2.id < 847);||1932||@70-0@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc WHERE (cg_canc.class = '0');||147||@70-1@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1;||13562||@70-2@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2 WHERE (cg_sb2.id >= 608) AND (cg_sb2.id < 847);||239||@70-3@
/* (canc cg_canc, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.class = '0');||6818||@70-4@
/* (canc cg_canc, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_canc.class = '0') AND (cg_sb2.id >= 608) AND (cg_sb2.id < 847);||48||@70-5@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb2.id >= 608) AND (cg_sb2.id < 847);||10574||@70-6@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb2.drug) AND (cg_canc.class = '0') AND (cg_sb2.id >= 608) AND (cg_sb2.id < 847);||1932||@70-7@
SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb3.drug) AND (cg_sb1.drug = cg_sb7.drug) AND (cg_sb7.id >= 1945);||576||@71-0@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1;||13562||@71-1@
/* (sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_3 cg_sb3;||12||@71-2@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7 WHERE (cg_sb7.id >= 1945);||2190||@71-3@
/* (sbond_1 cg_sb1, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_3 cg_sb3 WHERE (cg_sb1.drug = cg_sb3.drug);||120||@71-4@
/* (sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb7.drug) AND (cg_sb7.id >= 1945);||87832||@71-5@
/* (sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb3.drug = cg_sb7.drug) AND (cg_sb7.id >= 1945);||48||@71-6@
/* (sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb3.drug) AND (cg_sb1.drug = cg_sb7.drug) AND (cg_sb7.id >= 1945);||576||@71-7@
SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_3 cg_sb3 WHERE (cg_sb1.drug = cg_sb3.drug) AND (cg_sb1.id < 5307);||72||@72-0@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1 WHERE (cg_sb1.id < 5307);||5306||@72-1@
/* (sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_3 cg_sb3;||12||@72-2@
/* (sbond_1 cg_sb1, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_3 cg_sb3 WHERE (cg_sb1.drug = cg_sb3.drug) AND (cg_sb1.id < 5307);||72||@72-3@
SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb7.drug) AND (cg_sb7.id < 3540);||151704||@73-0@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1;||13562||@73-1@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7 WHERE (cg_sb7.id < 3540);||3539||@73-2@
/* (sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb7.drug) AND (cg_sb7.id < 3540);||151704||@73-3@
SELECT COUNT(*) FROM canc cg_canc, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb7.drug) AND (cg_sb7.id < 2654);||2600||@74-0@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc;||329||@74-1@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7 WHERE (cg_sb7.id < 2654);||2653||@74-2@
/* (canc cg_canc, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb7.drug) AND (cg_sb7.id < 2654);||2600||@74-3@
SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.class = '1') AND (cg_sb1.id < 12379);||5938||@75-0@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc WHERE (cg_canc.class = '1');||182||@75-1@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1 WHERE (cg_sb1.id < 12379);||12378||@75-2@
/* (canc cg_canc, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.class = '1') AND (cg_sb1.id < 12379);||5938||@75-3@
SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_canc.class = '1') AND (cg_sb2.id < 923);||460||@76-0@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc WHERE (cg_canc.class = '1');||182||@76-1@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2 WHERE (cg_sb2.id < 923);||922||@76-2@
/* (canc cg_canc, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_canc.class = '1') AND (cg_sb2.id < 923);||460||@76-3@
SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb7.drug) AND (cg_atm.drug = cg_sb2.drug) AND (cg_canc.id = cg_sb2.drug) AND (cg_atm.name = 'as') AND (cg_sb7.id < 3575);||72||@77-0@
/* (atom cg_atm) */ SELECT COUNT(*) FROM atom cg_atm WHERE (cg_atm.name = 'as');||1||@77-1@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc;||329||@77-2@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2;||926||@77-3@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7 WHERE (cg_sb7.id < 3575);||3574||@77-4@
/* (atom cg_atm, canc cg_canc) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.name = 'as');||1||@77-5@
/* (atom cg_atm, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_sb2.drug) AND (cg_atm.name = 'as');||6||@77-6@
/* (atom cg_atm, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb7.drug) AND (cg_atm.name = 'as') AND (cg_sb7.id < 3575);||12||@77-7@
/* (canc cg_canc, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb2.drug);||900||@77-8@
/* (canc cg_canc, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb7.drug) AND (cg_sb7.id < 3575);||3504||@77-9@
/* (sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb2.drug = cg_sb7.drug) AND (cg_sb7.id < 3575);||13116||@77-10@
/* (atom cg_atm, canc cg_canc, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb2.drug) AND (cg_atm.name = 'as');||6||@77-11@
/* (atom cg_atm, canc cg_canc, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.name = 'as') AND (cg_sb7.id < 3575);||12||@77-12@
/* (atom cg_atm, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb2.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.name = 'as') AND (cg_sb7.id < 3575);||72||@77-13@
/* (canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_sb2.drug = cg_sb7.drug) AND (cg_sb7.id < 3575);||13116||@77-14@
/* (atom cg_atm, canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb2.drug) AND (cg_canc.id = cg_sb2.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.name = 'as') AND (cg_sb7.id < 3575);||72||@77-15@
SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.drug = cg_sb7.drug) AND (cg_sb7.id >= 3193);||135240||@78-0@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1;||13562||@78-1@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2;||926||@78-2@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7 WHERE (cg_sb7.id >= 3193);||942||@78-3@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_sb1.drug = cg_sb2.drug);||46228||@78-4@
/* (sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb7.drug) AND (cg_sb7.id >= 3193);||33568||@78-5@
/* (sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb2.drug = cg_sb7.drug) AND (cg_sb7.id >= 3193);||2680||@78-6@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.drug = cg_sb7.drug) AND (cg_sb7.id >= 3193);||135240||@78-7@
SELECT COUNT(*) FROM atom cg_atm, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb2.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.atomtype = '1') AND (cg_atm.charge = 'a0=0_1375<x<=+inf') AND (cg_sb2.id < 651);||15316||@79-0@
/* (atom cg_atm) */ SELECT COUNT(*) FROM atom cg_atm WHERE (cg_atm.atomtype = '1') AND (cg_atm.charge = 'a0=0_1375<x<=+inf');||342||@79-1@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2 WHERE (cg_sb2.id < 651);||650||@79-2@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7;||4134||@79-3@
/* (atom cg_atm, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_sb2.drug) AND (cg_atm.atomtype = '1') AND (cg_atm.charge = 'a0=0_1375<x<=+inf') AND (cg_sb2.id < 651);||656||@79-4@
/* (atom cg_atm, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb7.drug) AND (cg_atm.atomtype = '1') AND (cg_atm.charge = 'a0=0_1375<x<=+inf');||6390||@79-5@
/* (sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb2.drug = cg_sb7.drug) AND (cg_sb2.id < 651);||7240||@79-6@
/* (atom cg_atm, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb2.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.atomtype = '1') AND (cg_atm.charge = 'a0=0_1375<x<=+inf') AND (cg_sb2.id < 651);||15316||@79-7@
SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb2.id >= 427);||22176||@80-0@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1;||13562||@80-1@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2 WHERE (cg_sb2.id >= 427);||500||@80-2@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb2.id >= 427);||22176||@80-3@
SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_3 cg_sb3 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb3.drug) AND (cg_atm.atomtype = '93') AND (cg_atm.name = 'cl') AND (cg_sb1.id < 3197);||72||@81-0@
/* (atom cg_atm) */ SELECT COUNT(*) FROM atom cg_atm WHERE (cg_atm.atomtype = '93') AND (cg_atm.name = 'cl');||276||@81-1@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1 WHERE (cg_sb1.id < 3197);||3196||@81-2@
/* (sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_3 cg_sb3;||12||@81-3@
/* (atom cg_atm, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.atomtype = '93') AND (cg_atm.name = 'cl') AND (cg_sb1.id < 3197);||9248||@81-4@
/* (atom cg_atm, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM atom cg_atm, sbond_3 cg_sb3 WHERE (cg_atm.drug = cg_sb3.drug) AND (cg_atm.atomtype = '93') AND (cg_atm.name = 'cl');||20||@81-5@
/* (sbond_1 cg_sb1, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_3 cg_sb3 WHERE (cg_sb1.drug = cg_sb3.drug) AND (cg_sb1.id < 3197);||72||@81-6@
/* (atom cg_atm, sbond_1 cg_sb1, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_3 cg_sb3 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb3.drug) AND (cg_atm.atomtype = '93') AND (cg_atm.name = 'cl') AND (cg_sb1.id < 3197);||72||@81-7@
SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb7.drug) AND (cg_canc.id = cg_sb3.drug) AND (cg_canc.id = cg_sb1.drug) AND (cg_sb1.drug = cg_sb2.drug);||1728||@82-0@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc;||329||@82-1@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1;||13562||@82-2@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2;||926||@82-3@
/* (sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_3 cg_sb3;||12||@82-4@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7;||4134||@82-5@
/* (canc cg_canc, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1 WHERE (cg_canc.id = cg_sb1.drug);||13422||@82-6@
/* (canc cg_canc, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb2.drug);||900||@82-7@
/* (canc cg_canc, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM canc cg_canc, sbond_3 cg_sb3 WHERE (cg_canc.id = cg_sb3.drug);||8||@82-8@
/* (canc cg_canc, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb7.drug);||4064||@82-9@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_sb1.drug = cg_sb2.drug);||46228||@82-10@
/* (sbond_1 cg_sb1, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_3 cg_sb3 WHERE (cg_sb1.drug = cg_sb3.drug);||120||@82-11@
/* (sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb7.drug);||173060||@82-12@
/* (sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_sb2.drug = cg_sb3.drug);||8||@82-13@
/* (sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb2.drug = cg_sb7.drug);||14728||@82-14@
/* (sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb3.drug = cg_sb7.drug);||96||@82-15@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb2.drug);||46228||@82-16@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_3 cg_sb3 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb3.drug);||120||@82-17@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb7.drug);||173060||@82-18@
/* (canc cg_canc, sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_canc.id = cg_sb3.drug);||8||@82-19@
/* (canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_canc.id = cg_sb7.drug);||14728||@82-20@
/* (canc cg_canc, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb3.drug) AND (cg_canc.id = cg_sb7.drug);||96||@82-21@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.drug = cg_sb3.drug);||144||@82-22@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.drug = cg_sb7.drug);||868024||@82-23@
/* (sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb3.drug) AND (cg_sb3.drug = cg_sb7.drug);||1440||@82-24@
/* (sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb2.drug = cg_sb3.drug) AND (cg_sb3.drug = cg_sb7.drug);||96||@82-25@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb2.drug) AND (cg_canc.id = cg_sb3.drug);||144||@82-26@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb2.drug) AND (cg_canc.id = cg_sb7.drug);||868024||@82-27@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb3.drug) AND (cg_canc.id = cg_sb7.drug);||1440||@82-28@
/* (canc cg_canc, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_canc.id = cg_sb3.drug) AND (cg_canc.id = cg_sb7.drug);||96||@82-29@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb3.drug) AND (cg_sb2.drug = cg_sb3.drug) AND (cg_sb3.drug = cg_sb7.drug);||1728||@82-30@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb2.drug) AND (cg_sb1.drug = cg_sb2.drug) AND (cg_canc.id = cg_sb3.drug) AND (cg_canc.id = cg_sb7.drug);||1728||@82-31@
SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.id < 3724) AND (cg_sb2.id < 590);||9422||@83-0@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1 WHERE (cg_sb1.id < 3724);||3723||@83-1@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2 WHERE (cg_sb2.id < 590);||589||@83-2@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.id < 3724) AND (cg_sb2.id < 590);||9422||@83-3@
SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb2.drug) AND (cg_atm.drug = cg_sb3.drug) AND (cg_atm.atomtype = '93') AND (cg_sb2.id < 706);||144||@84-0@
/* (atom cg_atm) */ SELECT COUNT(*) FROM atom cg_atm WHERE (cg_atm.atomtype = '93');||276||@84-1@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1;||13562||@84-2@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2 WHERE (cg_sb2.id < 706);||705||@84-3@
/* (sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_3 cg_sb3;||12||@84-4@
/* (atom cg_atm, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.atomtype = '93');||15922||@84-5@
/* (atom cg_atm, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_sb2.drug) AND (cg_atm.atomtype = '93') AND (cg_sb2.id < 706);||246||@84-6@
/* (atom cg_atm, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM atom cg_atm, sbond_3 cg_sb3 WHERE (cg_atm.drug = cg_sb3.drug) AND (cg_atm.atomtype = '93');||20||@84-7@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb2.id < 706);||37354||@84-8@
/* (sbond_1 cg_sb1, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_3 cg_sb3 WHERE (cg_sb1.drug = cg_sb3.drug);||120||@84-9@
/* (sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_sb2.drug = cg_sb3.drug) AND (cg_sb2.id < 706);||8||@84-10@
/* (atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb2.drug) AND (cg_atm.atomtype = '93') AND (cg_sb2.id < 706);||11976||@84-11@
/* (atom cg_atm, sbond_1 cg_sb1, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_3 cg_sb3 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb3.drug) AND (cg_atm.atomtype = '93');||264||@84-12@
/* (atom cg_atm, sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM atom cg_atm, sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_atm.drug = cg_sb2.drug) AND (cg_atm.drug = cg_sb3.drug) AND (cg_atm.atomtype = '93') AND (cg_sb2.id < 706);||8||@84-13@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.drug = cg_sb3.drug) AND (cg_sb2.id < 706);||144||@84-14@
/* (atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb2.drug) AND (cg_atm.drug = cg_sb3.drug) AND (cg_atm.atomtype = '93') AND (cg_sb2.id < 706);||144||@84-15@
SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb2.drug = cg_sb7.drug) AND (cg_sb2.id >= 265) AND (cg_sb7.id >= 1604);||10912||@85-0@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2 WHERE (cg_sb2.id >= 265);||662||@85-1@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7 WHERE (cg_sb7.id >= 1604);||2531||@85-2@
/* (sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb2.drug = cg_sb7.drug) AND (cg_sb2.id >= 265) AND (cg_sb7.id >= 1604);||10912||@85-3@
SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_3 cg_sb3 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb3.drug) AND (cg_sb1.id >= 10664);||48||@86-0@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc;||329||@86-1@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1 WHERE (cg_sb1.id >= 10664);||2899||@86-2@
/* (sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_3 cg_sb3;||12||@86-3@
/* (canc cg_canc, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_sb1.id >= 10664);||2855||@86-4@
/* (canc cg_canc, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM canc cg_canc, sbond_3 cg_sb3 WHERE (cg_canc.id = cg_sb3.drug);||8||@86-5@
/* (sbond_1 cg_sb1, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_3 cg_sb3 WHERE (cg_sb1.drug = cg_sb3.drug) AND (cg_sb1.id >= 10664);||48||@86-6@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_3 cg_sb3 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb3.drug) AND (cg_sb1.id >= 10664);||48||@86-7@
SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_canc.class = '1') AND (cg_sb7.id < 3839);||10392||@87-0@
/* (atom cg_atm) */ SELECT COUNT(*) FROM atom cg_atm WHERE (cg_atm.charge = 'a0=0_0615<x<=0_1375');||1830||@87-1@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc WHERE (cg_canc.class = '1');||182||@87-2@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7 WHERE (cg_sb7.id < 3839);||3838||@87-3@
/* (atom cg_atm, canc cg_canc) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_canc.class = '1');||879||@87-4@
/* (atom cg_atm, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb7.drug) AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_sb7.id < 3839);||21546||@87-5@
/* (canc cg_canc, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb7.drug) AND (cg_canc.class = '1') AND (cg_sb7.id < 3839);||2074||@87-6@
/* (atom cg_atm, canc cg_canc, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_canc.class = '1') AND (cg_sb7.id < 3839);||10392||@87-7@
SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb2.drug) AND (cg_atm.name = 'c') AND (cg_sb2.id >= 715);||128176||@88-0@
/* (atom cg_atm) */ SELECT COUNT(*) FROM atom cg_atm WHERE (cg_atm.name = 'c');||3428||@88-1@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1;||13562||@88-2@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2 WHERE (cg_sb2.id >= 715);||212||@88-3@
/* (atom cg_atm, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.name = 'c');||230356||@88-4@
/* (atom cg_atm, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_sb2.drug) AND (cg_atm.name = 'c') AND (cg_sb2.id >= 715);||2612||@88-5@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb2.id >= 715);||7992||@88-6@
/* (atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb2.drug) AND (cg_atm.name = 'c') AND (cg_sb2.id >= 715);||128176||@88-7@
SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_canc.id) AND (cg_canc.id = cg_sb1.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.name = 'h') AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_canc.class = '1') AND (cg_sb7.id < 1234);||112724||@89-0@
/* (atom cg_atm) */ SELECT COUNT(*) FROM atom cg_atm WHERE (cg_atm.name = 'h') AND (cg_atm.charge = 'a0=0_0615<x<=0_1375');||1617||@89-1@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc WHERE (cg_canc.class = '1');||182||@89-2@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1;||13562||@89-3@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7 WHERE (cg_sb7.id < 1234);||1233||@89-4@
/* (atom cg_atm, canc cg_canc) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.name = 'h') AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_canc.class = '1');||763||@89-5@
/* (atom cg_atm, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.name = 'h') AND (cg_atm.charge = 'a0=0_0615<x<=0_1375');||131384||@89-6@
/* (atom cg_atm, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb7.drug) AND (cg_atm.name = 'h') AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_sb7.id < 1234);||6296||@89-7@
/* (canc cg_canc, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.class = '1');||6604||@89-8@
/* (canc cg_canc, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb7.drug) AND (cg_canc.class = '1') AND (cg_sb7.id < 1234);||469||@89-9@
/* (sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb7.drug) AND (cg_sb7.id < 1234);||53844||@89-10@
/* (atom cg_atm, canc cg_canc, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_1 cg_sb1 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb1.drug) AND (cg_atm.name = 'h') AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_canc.class = '1');||52462||@89-11@
/* (atom cg_atm, canc cg_canc, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.name = 'h') AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_canc.class = '1') AND (cg_sb7.id < 1234);||2116||@89-12@
/* (atom cg_atm, sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.name = 'h') AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_sb7.id < 1234);||374772||@89-13@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_canc.class = '1') AND (cg_sb7.id < 1234);||20284||@89-14@
/* (atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_canc.id) AND (cg_canc.id = cg_sb1.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.name = 'h') AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_canc.class = '1') AND (cg_sb7.id < 1234);||112724||@89-15@
SELECT COUNT(*) FROM atom cg_atm, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb7.drug) AND (cg_atm.atomtype = '1') AND (cg_sb7.id >= 1501);||5078||@90-0@
/* (atom cg_atm) */ SELECT COUNT(*) FROM atom cg_atm WHERE (cg_atm.atomtype = '1');||352||@90-1@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7 WHERE (cg_sb7.id >= 1501);||2634||@90-2@
/* (atom cg_atm, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb7.drug) AND (cg_atm.atomtype = '1') AND (cg_sb7.id >= 1501);||5078||@90-3@
SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb2.drug) AND (cg_sb1.id >= 13510) AND (cg_sb1.id < 13563);||1156||@91-0@
/* (atom cg_atm) */ SELECT COUNT(*) FROM atom cg_atm;||9064||@91-1@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1 WHERE (cg_sb1.id >= 13510) AND (cg_sb1.id < 13563);||53||@91-2@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2;||926||@91-3@
/* (atom cg_atm, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_sb1.id >= 13510) AND (cg_sb1.id < 13563);||1286||@91-4@
/* (atom cg_atm, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_sb2.drug);||32424||@91-5@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.id >= 13510) AND (cg_sb1.id < 13563);||34||@91-6@
/* (atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb2.drug) AND (cg_sb1.id >= 13510) AND (cg_sb1.id < 13563);||1156||@91-7@
SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb7.drug) AND (cg_canc.id = cg_sb3.drug) AND (cg_canc.id = cg_sb2.drug) AND (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.id < 12833) AND (cg_sb7.id < 3447);||1728||@92-0@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc;||329||@92-1@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1 WHERE (cg_sb1.id < 12833);||12832||@92-2@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2;||926||@92-3@
/* (sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_3 cg_sb3;||12||@92-4@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7 WHERE (cg_sb7.id < 3447);||3446||@92-5@
/* (canc cg_canc, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_sb1.id < 12833);||12692||@92-6@
/* (canc cg_canc, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb2.drug);||900||@92-7@
/* (canc cg_canc, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM canc cg_canc, sbond_3 cg_sb3 WHERE (cg_canc.id = cg_sb3.drug);||8||@92-8@
/* (canc cg_canc, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb7.drug) AND (cg_sb7.id < 3447);||3376||@92-9@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.id < 12833);||45308||@92-10@
/* (sbond_1 cg_sb1, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_3 cg_sb3 WHERE (cg_sb1.drug = cg_sb3.drug) AND (cg_sb1.id < 12833);||72||@92-11@
/* (sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb7.drug) AND (cg_sb1.id < 12833) AND (cg_sb7.id < 3447);||146616||@92-12@
/* (sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_sb2.drug = cg_sb3.drug);||8||@92-13@
/* (sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb2.drug = cg_sb7.drug) AND (cg_sb7.id < 3447);||12788||@92-14@
/* (sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb3.drug = cg_sb7.drug) AND (cg_sb7.id < 3447);||48||@92-15@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb2.drug) AND (cg_sb1.id < 12833);||45308||@92-16@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_3 cg_sb3 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb3.drug) AND (cg_sb1.id < 12833);||72||@92-17@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_sb1.id < 12833) AND (cg_sb7.id < 3447);||146616||@92-18@
/* (canc cg_canc, sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_canc.id = cg_sb3.drug);||8||@92-19@
/* (canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_sb7.id < 3447);||12788||@92-20@
/* (canc cg_canc, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb3.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_sb7.id < 3447);||48||@92-21@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb2.drug = cg_sb3.drug) AND (cg_sb1.id < 12833);||144||@92-22@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb2.drug = cg_sb7.drug) AND (cg_sb1.id < 12833) AND (cg_sb7.id < 3447);||759464||@92-23@
/* (sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb3.drug) AND (cg_sb3.drug = cg_sb7.drug) AND (cg_sb1.id < 12833) AND (cg_sb7.id < 3447);||864||@92-24@
/* (sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb2.drug = cg_sb3.drug) AND (cg_sb3.drug = cg_sb7.drug) AND (cg_sb7.id < 3447);||96||@92-25@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb2.drug) AND (cg_canc.id = cg_sb3.drug) AND (cg_sb1.id < 12833);||144||@92-26@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb2.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_sb1.id < 12833) AND (cg_sb7.id < 3447);||759464||@92-27@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb3.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_sb1.id < 12833) AND (cg_sb7.id < 3447);||864||@92-28@
/* (canc cg_canc, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_canc.id = cg_sb3.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_sb7.id < 3447);||96||@92-29@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb3.drug) AND (cg_sb2.drug = cg_sb3.drug) AND (cg_sb3.drug = cg_sb7.drug) AND (cg_sb1.id < 12833) AND (cg_sb7.id < 3447);||1728||@92-30@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb2.drug) AND (cg_sb1.drug = cg_sb2.drug) AND (cg_canc.id = cg_sb3.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_sb1.id < 12833) AND (cg_sb7.id < 3447);||1728||@92-31@
SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb7.drug) AND (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb2.drug);||52772816||@93-0@
/* (atom cg_atm) */ SELECT COUNT(*) FROM atom cg_atm;||9064||@93-1@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1;||13562||@93-2@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2;||926||@93-3@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7;||4134||@93-4@
/* (atom cg_atm, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1 WHERE (cg_atm.drug = cg_sb1.drug);||642488||@93-5@
/* (atom cg_atm, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_sb2.drug);||32424||@93-6@
/* (atom cg_atm, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb7.drug);||137216||@93-7@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_sb1.drug = cg_sb2.drug);||46228||@93-8@
/* (sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb7.drug);||173060||@93-9@
/* (sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb2.drug = cg_sb7.drug);||14728||@93-10@
/* (atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb2.drug);||2678628||@93-11@
/* (atom cg_atm, sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb7.drug);||7847836||@93-12@
/* (atom cg_atm, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb2.drug) AND (cg_atm.drug = cg_sb7.drug);||726276||@93-13@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.drug = cg_sb7.drug);||868024||@93-14@
/* (atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_sb1.drug = cg_sb2.drug) AND (cg_atm.drug = cg_sb7.drug);||52772816||@93-15@
SELECT COUNT(*) FROM atom cg_atm, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb2.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.name = 'h') AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_sb2.id >= 511) AND (cg_sb7.id < 2399);||2616||@94-0@
/* (atom cg_atm) */ SELECT COUNT(*) FROM atom cg_atm WHERE (cg_atm.name = 'h') AND (cg_atm.charge = 'a0=0_0615<x<=0_1375');||1617||@94-1@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2 WHERE (cg_sb2.id >= 511);||416||@94-2@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7 WHERE (cg_sb7.id < 2399);||2398||@94-3@
/* (atom cg_atm, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_sb2.drug) AND (cg_atm.name = 'h') AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_sb2.id >= 511);||1784||@94-4@
/* (atom cg_atm, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb7.drug) AND (cg_atm.name = 'h') AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_sb7.id < 2399);||12888||@94-5@
/* (sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb2.drug = cg_sb7.drug) AND (cg_sb2.id >= 511) AND (cg_sb7.id < 2399);||876||@94-6@
/* (atom cg_atm, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb2.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.name = 'h') AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_sb2.id >= 511) AND (cg_sb7.id < 2399);||2616||@94-7@
SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_sb1.id >= 4801) AND (cg_sb1.id < 13012);||364146||@95-0@
/* (atom cg_atm) */ SELECT COUNT(*) FROM atom cg_atm;||9064||@95-1@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1 WHERE (cg_sb1.id >= 4801) AND (cg_sb1.id < 13012);||8211||@95-2@
/* (atom cg_atm, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_sb1.id >= 4801) AND (cg_sb1.id < 13012);||364146||@95-3@
SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb2.drug = cg_sb3.drug) AND (cg_sb1.drug = cg_sb7.drug) AND (cg_sb2.id < 785);||1728||@96-0@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1;||13562||@96-1@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2 WHERE (cg_sb2.id < 785);||784||@96-2@
/* (sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_3 cg_sb3;||12||@96-3@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7;||4134||@96-4@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb2.id < 785);||40720||@96-5@
/* (sbond_1 cg_sb1, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_3 cg_sb3 WHERE (cg_sb1.drug = cg_sb3.drug);||120||@96-6@
/* (sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb7.drug);||173060||@96-7@
/* (sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_sb2.drug = cg_sb3.drug) AND (cg_sb2.id < 785);||8||@96-8@
/* (sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb2.drug = cg_sb7.drug) AND (cg_sb2.id < 785);||12028||@96-9@
/* (sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb3.drug = cg_sb7.drug);||96||@96-10@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.drug = cg_sb3.drug) AND (cg_sb2.id < 785);||144||@96-11@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.drug = cg_sb7.drug) AND (cg_sb2.id < 785);||731944||@96-12@
/* (sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb3.drug) AND (cg_sb1.drug = cg_sb7.drug);||1440||@96-13@
/* (sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb2.drug = cg_sb3.drug) AND (cg_sb2.drug = cg_sb7.drug) AND (cg_sb2.id < 785);||96||@96-14@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb2.drug = cg_sb3.drug) AND (cg_sb1.drug = cg_sb7.drug) AND (cg_sb2.id < 785);||1728||@96-15@
SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb2.drug) AND (cg_atm.name = 'h') AND (cg_atm.charge = 'a0=-0_1355<x<=-0_0175');||15756||@97-0@
/* (atom cg_atm) */ SELECT COUNT(*) FROM atom cg_atm WHERE (cg_atm.name = 'h') AND (cg_atm.charge = 'a0=-0_1355<x<=-0_0175');||33||@97-1@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1;||13562||@97-2@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2;||926||@97-3@
/* (atom cg_atm, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.name = 'h') AND (cg_atm.charge = 'a0=-0_1355<x<=-0_0175');||3422||@97-4@
/* (atom cg_atm, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_sb2.drug) AND (cg_atm.name = 'h') AND (cg_atm.charge = 'a0=-0_1355<x<=-0_0175');||156||@97-5@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_sb1.drug = cg_sb2.drug);||46228||@97-6@
/* (atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb2.drug) AND (cg_atm.name = 'h') AND (cg_atm.charge = 'a0=-0_1355<x<=-0_0175');||15756||@97-7@
SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.drug = cg_sb3.drug) AND (cg_sb1.id < 11969);||144||@98-0@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1 WHERE (cg_sb1.id < 11969);||11968||@98-1@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2;||926||@98-2@
/* (sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_3 cg_sb3;||12||@98-3@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.id < 11969);||41552||@98-4@
/* (sbond_1 cg_sb1, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_3 cg_sb3 WHERE (cg_sb1.drug = cg_sb3.drug) AND (cg_sb1.id < 11969);||72||@98-5@
/* (sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_sb2.drug = cg_sb3.drug);||8||@98-6@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.drug = cg_sb3.drug) AND (cg_sb1.id < 11969);||144||@98-7@
SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb2.drug = cg_sb3.drug) AND (cg_sb1.drug = cg_sb7.drug) AND (cg_sb1.id < 4380) AND (cg_sb7.id < 3813);||1728||@99-0@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1 WHERE (cg_sb1.id < 4380);||4379||@99-1@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2;||926||@99-2@
/* (sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_3 cg_sb3;||12||@99-3@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7 WHERE (cg_sb7.id < 3813);||3812||@99-4@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.id < 4380);||11506||@99-5@
/* (sbond_1 cg_sb1, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_3 cg_sb3 WHERE (cg_sb1.drug = cg_sb3.drug) AND (cg_sb1.id < 4380);||72||@99-6@
/* (sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb7.drug) AND (cg_sb1.id < 4380) AND (cg_sb7.id < 3813);||45568||@99-7@
/* (sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_sb2.drug = cg_sb3.drug);||8||@99-8@
/* (sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb2.drug = cg_sb7.drug) AND (cg_sb7.id < 3813);||14424||@99-9@
/* (sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb3.drug = cg_sb7.drug) AND (cg_sb7.id < 3813);||48||@99-10@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.drug = cg_sb3.drug) AND (cg_sb1.id < 4380);||144||@99-11@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.drug = cg_sb7.drug) AND (cg_sb1.id < 4380) AND (cg_sb7.id < 3813);||125328||@99-12@
/* (sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb3.drug) AND (cg_sb1.drug = cg_sb7.drug) AND (cg_sb1.id < 4380) AND (cg_sb7.id < 3813);||864||@99-13@
/* (sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb2.drug = cg_sb3.drug) AND (cg_sb2.drug = cg_sb7.drug) AND (cg_sb7.id < 3813);||96||@99-14@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb2.drug = cg_sb3.drug) AND (cg_sb1.drug = cg_sb7.drug) AND (cg_sb1.id < 4380) AND (cg_sb7.id < 3813);||1728||@99-15@
SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb2.drug = cg_sb3.drug) AND (cg_sb1.drug = cg_sb7.drug) AND (cg_sb1.id < 9250) AND (cg_sb2.id < 424);||1728||@100-0@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1 WHERE (cg_sb1.id < 9250);||9249||@100-1@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2 WHERE (cg_sb2.id < 424);||423||@100-2@
/* (sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_3 cg_sb3;||12||@100-3@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7;||4134||@100-4@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.id < 9250) AND (cg_sb2.id < 424);||23914||@100-5@
/* (sbond_1 cg_sb1, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_3 cg_sb3 WHERE (cg_sb1.drug = cg_sb3.drug) AND (cg_sb1.id < 9250);||72||@100-6@
/* (sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb7.drug) AND (cg_sb1.id < 9250);||89072||@100-7@
/* (sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_sb2.drug = cg_sb3.drug) AND (cg_sb2.id < 424);||8||@100-8@
/* (sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb2.drug = cg_sb7.drug) AND (cg_sb2.id < 424);||4540||@100-9@
/* (sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb3.drug = cg_sb7.drug);||96||@100-10@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.drug = cg_sb3.drug) AND (cg_sb1.id < 9250) AND (cg_sb2.id < 424);||144||@100-11@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.drug = cg_sb7.drug) AND (cg_sb1.id < 9250) AND (cg_sb2.id < 424);||239664||@100-12@
/* (sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb3.drug) AND (cg_sb1.drug = cg_sb7.drug) AND (cg_sb1.id < 9250);||864||@100-13@
/* (sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb2.drug = cg_sb3.drug) AND (cg_sb2.drug = cg_sb7.drug) AND (cg_sb2.id < 424);||96||@100-14@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb2.drug = cg_sb3.drug) AND (cg_sb1.drug = cg_sb7.drug) AND (cg_sb1.id < 9250) AND (cg_sb2.id < 424);||1728||@100-15@
SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.id < 8886) AND (cg_sb2.id >= 399);||4876||@101-0@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1 WHERE (cg_sb1.id < 8886);||8885||@101-1@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2 WHERE (cg_sb2.id >= 399);||528||@101-2@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.id < 8886) AND (cg_sb2.id >= 399);||4876||@101-3@
SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.class = '1') AND (cg_sb1.id >= 3199) AND (cg_sb1.id < 8797);||2114||@102-0@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc WHERE (cg_canc.class = '1');||182||@102-1@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1 WHERE (cg_sb1.id >= 3199) AND (cg_sb1.id < 8797);||5598||@102-2@
/* (canc cg_canc, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.class = '1') AND (cg_sb1.id >= 3199) AND (cg_sb1.id < 8797);||2114||@102-3@
SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_canc.class = '0') AND (cg_sb2.id < 586) AND (cg_sb7.id < 2811);||2692||@103-0@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc WHERE (cg_canc.class = '0');||147||@103-1@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2 WHERE (cg_sb2.id < 586);||585||@103-2@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7 WHERE (cg_sb7.id < 2811);||2810||@103-3@
/* (canc cg_canc, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_canc.class = '0') AND (cg_sb2.id < 586);||317||@103-4@
/* (canc cg_canc, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb7.drug) AND (cg_canc.class = '0') AND (cg_sb7.id < 2811);||1252||@103-5@
/* (sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb2.drug = cg_sb7.drug) AND (cg_sb2.id < 586) AND (cg_sb7.id < 2811);||5452||@103-6@
/* (canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_canc.class = '0') AND (cg_sb2.id < 586) AND (cg_sb7.id < 2811);||2692||@103-7@
SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.name = 'h') AND (cg_sb1.id < 8630);||210040||@104-0@
/* (atom cg_atm) */ SELECT COUNT(*) FROM atom cg_atm WHERE (cg_atm.name = 'h');||4060||@104-1@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1 WHERE (cg_sb1.id < 8630);||8629||@104-2@
/* (atom cg_atm, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.name = 'h') AND (cg_sb1.id < 8630);||210040||@104-3@
SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_sb7.id >= 3455);||1940||@105-0@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc;||329||@105-1@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2;||926||@105-2@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7 WHERE (cg_sb7.id >= 3455);||680||@105-3@
/* (canc cg_canc, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb2.drug);||900||@105-4@
/* (canc cg_canc, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb7.drug) AND (cg_sb7.id >= 3455);||680||@105-5@
/* (sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb2.drug = cg_sb7.drug) AND (cg_sb7.id >= 3455);||1940||@105-6@
/* (canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_sb7.id >= 3455);||1940||@105-7@
SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb7.drug) AND (cg_canc.id = cg_sb3.drug) AND (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb2.drug) AND (cg_canc.class = '0') AND (cg_sb1.id < 5276);||1728||@106-0@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc WHERE (cg_canc.class = '0');||147||@106-1@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1 WHERE (cg_sb1.id < 5276);||5275||@106-2@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2;||926||@106-3@
/* (sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_3 cg_sb3;||12||@106-4@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7;||4134||@106-5@
/* (canc cg_canc, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.class = '0') AND (cg_sb1.id < 5276);||3130||@106-6@
/* (canc cg_canc, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_canc.class = '0');||436||@106-7@
/* (canc cg_canc, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM canc cg_canc, sbond_3 cg_sb3 WHERE (cg_canc.id = cg_sb3.drug) AND (cg_canc.class = '0');||4||@106-8@
/* (canc cg_canc, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb7.drug) AND (cg_canc.class = '0');||1750||@106-9@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.id < 5276);||14906||@106-10@
/* (sbond_1 cg_sb1, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_3 cg_sb3 WHERE (cg_sb1.drug = cg_sb3.drug) AND (cg_sb1.id < 5276);||72||@106-11@
/* (sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb7.drug) AND (cg_sb1.id < 5276);||55684||@106-12@
/* (sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_sb2.drug = cg_sb3.drug);||8||@106-13@
/* (sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb2.drug = cg_sb7.drug);||14728||@106-14@
/* (sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb3.drug = cg_sb7.drug);||96||@106-15@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb2.drug) AND (cg_canc.class = '0') AND (cg_sb1.id < 5276);||9292||@106-16@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_3 cg_sb3 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb3.drug) AND (cg_canc.class = '0') AND (cg_sb1.id < 5276);||72||@106-17@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_canc.class = '0') AND (cg_sb1.id < 5276);||33560||@106-18@
/* (canc cg_canc, sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_canc.id = cg_sb3.drug) AND (cg_canc.class = '0');||8||@106-19@
/* (canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_canc.class = '0');||5496||@106-20@
/* (canc cg_canc, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb3.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_canc.class = '0');||48||@106-21@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.drug = cg_sb3.drug) AND (cg_sb1.id < 5276);||144||@106-22@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.drug = cg_sb7.drug) AND (cg_sb1.id < 5276);||143104||@106-23@
/* (sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb3.drug) AND (cg_sb3.drug = cg_sb7.drug) AND (cg_sb1.id < 5276);||864||@106-24@
/* (sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb2.drug = cg_sb3.drug) AND (cg_sb3.drug = cg_sb7.drug);||96||@106-25@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb2.drug) AND (cg_canc.id = cg_sb3.drug) AND (cg_canc.class = '0') AND (cg_sb1.id < 5276);||144||@106-26@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb2.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_canc.class = '0') AND (cg_sb1.id < 5276);||70624||@106-27@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb3.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_canc.class = '0') AND (cg_sb1.id < 5276);||864||@106-28@
/* (canc cg_canc, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_canc.id = cg_sb3.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_canc.class = '0');||96||@106-29@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb3.drug) AND (cg_sb2.drug = cg_sb3.drug) AND (cg_sb3.drug = cg_sb7.drug) AND (cg_sb1.id < 5276);||1728||@106-30@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb2.drug) AND (cg_sb1.drug = cg_sb2.drug) AND (cg_canc.id = cg_sb3.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_canc.class = '0') AND (cg_sb1.id < 5276);||1728||@106-31@
SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb2.drug) AND (cg_atm.atomtype = '3') AND (cg_canc.class = '1') AND (cg_sb2.id >= 345) AND (cg_sb2.id < 614);||1266||@107-0@
/* (atom cg_atm) */ SELECT COUNT(*) FROM atom cg_atm WHERE (cg_atm.atomtype = '3');||3597||@107-1@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc WHERE (cg_canc.class = '1');||182||@107-2@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2 WHERE (cg_sb2.id >= 345) AND (cg_sb2.id < 614);||269||@107-3@
/* (atom cg_atm, canc cg_canc) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.atomtype = '3') AND (cg_canc.class = '1');||1724||@107-4@
/* (atom cg_atm, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_sb2.drug) AND (cg_atm.atomtype = '3') AND (cg_sb2.id >= 345) AND (cg_sb2.id < 614);||3536||@107-5@
/* (canc cg_canc, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_canc.class = '1') AND (cg_sb2.id >= 345) AND (cg_sb2.id < 614);||132||@107-6@
/* (atom cg_atm, canc cg_canc, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb2.drug) AND (cg_atm.atomtype = '3') AND (cg_canc.class = '1') AND (cg_sb2.id >= 345) AND (cg_sb2.id < 614);||1266||@107-7@
SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.atomtype = '93') AND (cg_sb1.id < 4113);||9248||@108-0@
/* (atom cg_atm) */ SELECT COUNT(*) FROM atom cg_atm WHERE (cg_atm.atomtype = '93');||276||@108-1@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1 WHERE (cg_sb1.id < 4113);||4112||@108-2@
/* (atom cg_atm, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.atomtype = '93') AND (cg_sb1.id < 4113);||9248||@108-3@
SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.id < 3786);||9470||@109-0@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1 WHERE (cg_sb1.id < 3786);||3785||@109-1@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2;||926||@109-2@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.id < 3786);||9470||@109-3@
SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb2.drug) AND (cg_canc.class = '1') AND (cg_sb2.id >= 270) AND (cg_sb2.id < 606);||5218||@110-0@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc WHERE (cg_canc.class = '1');||182||@110-1@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1;||13562||@110-2@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2 WHERE (cg_sb2.id >= 270) AND (cg_sb2.id < 606);||336||@110-3@
/* (canc cg_canc, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.class = '1');||6604||@110-4@
/* (canc cg_canc, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_canc.class = '1') AND (cg_sb2.id >= 270) AND (cg_sb2.id < 606);||143||@110-5@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb2.id >= 270) AND (cg_sb2.id < 606);||16438||@110-6@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb2.drug) AND (cg_canc.class = '1') AND (cg_sb2.id >= 270) AND (cg_sb2.id < 606);||5218||@110-7@
SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb2.drug) AND (cg_canc.id = cg_sb3.drug) AND (cg_sb1.id < 3215);||144||@111-0@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc;||329||@111-1@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1 WHERE (cg_sb1.id < 3215);||3214||@111-2@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2;||926||@111-3@
/* (sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_3 cg_sb3;||12||@111-4@
/* (canc cg_canc, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_sb1.id < 3215);||3164||@111-5@
/* (canc cg_canc, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb2.drug);||900||@111-6@
/* (canc cg_canc, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM canc cg_canc, sbond_3 cg_sb3 WHERE (cg_canc.id = cg_sb3.drug);||8||@111-7@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.id < 3215);||8516||@111-8@
/* (sbond_1 cg_sb1, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_3 cg_sb3 WHERE (cg_sb1.drug = cg_sb3.drug) AND (cg_sb1.id < 3215);||72||@111-9@
/* (sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_sb2.drug = cg_sb3.drug);||8||@111-10@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb2.drug) AND (cg_sb1.id < 3215);||8516||@111-11@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_3 cg_sb3 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb3.drug) AND (cg_sb1.id < 3215);||72||@111-12@
/* (canc cg_canc, sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_canc.id = cg_sb3.drug);||8||@111-13@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.drug = cg_sb3.drug) AND (cg_sb1.id < 3215);||144||@111-14@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb2.drug) AND (cg_canc.id = cg_sb3.drug) AND (cg_sb1.id < 3215);||144||@111-15@
SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb7.drug) AND (cg_atm.drug = cg_canc.id) AND (cg_canc.id = cg_sb1.drug) AND (cg_atm.atomtype = '93') AND (cg_atm.charge = 'a0=-0_1355<x<=-0_0175');||13800||@112-0@
/* (atom cg_atm) */ SELECT COUNT(*) FROM atom cg_atm WHERE (cg_atm.atomtype = '93') AND (cg_atm.charge = 'a0=-0_1355<x<=-0_0175');||73||@112-1@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc;||329||@112-2@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1;||13562||@112-3@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7;||4134||@112-4@
/* (atom cg_atm, canc cg_canc) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.atomtype = '93') AND (cg_atm.charge = 'a0=-0_1355<x<=-0_0175');||73||@112-5@
/* (atom cg_atm, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.atomtype = '93') AND (cg_atm.charge = 'a0=-0_1355<x<=-0_0175');||2228||@112-6@
/* (atom cg_atm, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb7.drug) AND (cg_atm.atomtype = '93') AND (cg_atm.charge = 'a0=-0_1355<x<=-0_0175');||708||@112-7@
/* (canc cg_canc, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1 WHERE (cg_canc.id = cg_sb1.drug);||13422||@112-8@
/* (canc cg_canc, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb7.drug);||4064||@112-9@
/* (sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb7.drug);||173060||@112-10@
/* (atom cg_atm, canc cg_canc, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_1 cg_sb1 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb1.drug) AND (cg_atm.atomtype = '93') AND (cg_atm.charge = 'a0=-0_1355<x<=-0_0175');||2228||@112-11@
/* (atom cg_atm, canc cg_canc, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.atomtype = '93') AND (cg_atm.charge = 'a0=-0_1355<x<=-0_0175');||708||@112-12@
/* (atom cg_atm, sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.atomtype = '93') AND (cg_atm.charge = 'a0=-0_1355<x<=-0_0175');||13800||@112-13@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb7.drug);||173060||@112-14@
/* (atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb1.drug) AND (cg_canc.id = cg_sb1.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.atomtype = '93') AND (cg_atm.charge = 'a0=-0_1355<x<=-0_0175');||13800||@112-15@
SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb2.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_sb1.id >= 3854) AND (cg_sb2.id < 263);||45512||@113-0@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc;||329||@113-1@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1 WHERE (cg_sb1.id >= 3854);||9709||@113-2@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2 WHERE (cg_sb2.id < 263);||262||@113-3@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7;||4134||@113-4@
/* (canc cg_canc, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_sb1.id >= 3854);||9619||@113-5@
/* (canc cg_canc, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_sb2.id < 263);||256||@113-6@
/* (canc cg_canc, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb7.drug);||4064||@113-7@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.id >= 3854) AND (cg_sb2.id < 263);||5542||@113-8@
/* (sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb7.drug) AND (cg_sb1.id >= 3854);||132832||@113-9@
/* (sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb2.drug = cg_sb7.drug) AND (cg_sb2.id < 263);||2816||@113-10@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb2.drug) AND (cg_sb1.id >= 3854) AND (cg_sb2.id < 263);||5542||@113-11@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_sb1.id >= 3854);||132832||@113-12@
/* (canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_sb2.id < 263);||2816||@113-13@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.drug = cg_sb7.drug) AND (cg_sb1.id >= 3854) AND (cg_sb2.id < 263);||45512||@113-14@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb2.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_sb1.id >= 3854) AND (cg_sb2.id < 263);||45512||@113-15@
SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb3.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_canc.class = '1') AND (cg_sb1.id >= 6025);||576||@114-0@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc WHERE (cg_canc.class = '1');||182||@114-1@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1 WHERE (cg_sb1.id >= 6025);||7538||@114-2@
/* (sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_3 cg_sb3;||12||@114-3@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7;||4134||@114-4@
/* (canc cg_canc, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.class = '1') AND (cg_sb1.id >= 6025);||4166||@114-5@
/* (canc cg_canc, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM canc cg_canc, sbond_3 cg_sb3 WHERE (cg_canc.id = cg_sb3.drug) AND (cg_canc.class = '1');||4||@114-6@
/* (canc cg_canc, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb7.drug) AND (cg_canc.class = '1');||2314||@114-7@
/* (sbond_1 cg_sb1, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_3 cg_sb3 WHERE (cg_sb1.drug = cg_sb3.drug) AND (cg_sb1.id >= 6025);||48||@114-8@
/* (sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb7.drug) AND (cg_sb1.id >= 6025);||109396||@114-9@
/* (sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb3.drug = cg_sb7.drug);||96||@114-10@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_3 cg_sb3 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb3.drug) AND (cg_canc.class = '1') AND (cg_sb1.id >= 6025);||48||@114-11@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_canc.class = '1') AND (cg_sb1.id >= 6025);||71132||@114-12@
/* (canc cg_canc, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb3.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_canc.class = '1');||48||@114-13@
/* (sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb3.drug) AND (cg_sb1.drug = cg_sb7.drug) AND (cg_sb1.id >= 6025);||576||@114-14@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb3.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_canc.class = '1') AND (cg_sb1.id >= 6025);||576||@114-15@
SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_canc.class = '0') AND (cg_sb2.id >= 397) AND (cg_sb2.id < 922);||3092||@115-0@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc WHERE (cg_canc.class = '0');||147||@115-1@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2 WHERE (cg_sb2.id >= 397) AND (cg_sb2.id < 922);||525||@115-2@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7;||4134||@115-3@
/* (canc cg_canc, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_canc.class = '0') AND (cg_sb2.id >= 397) AND (cg_sb2.id < 922);||202||@115-4@
/* (canc cg_canc, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb7.drug) AND (cg_canc.class = '0');||1750||@115-5@
/* (sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb2.drug = cg_sb7.drug) AND (cg_sb2.id >= 397) AND (cg_sb2.id < 922);||10356||@115-6@
/* (canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_canc.class = '0') AND (cg_sb2.id >= 397) AND (cg_sb2.id < 922);||3092||@115-7@
SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_canc.class = '1') AND (cg_sb2.id < 209);||1064||@116-0@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc WHERE (cg_canc.class = '1');||182||@116-1@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2 WHERE (cg_sb2.id < 209);||208||@116-2@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7;||4134||@116-3@
/* (canc cg_canc, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_canc.class = '1') AND (cg_sb2.id < 209);||84||@116-4@
/* (canc cg_canc, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb7.drug) AND (cg_canc.class = '1');||2314||@116-5@
/* (sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb2.drug = cg_sb7.drug) AND (cg_sb2.id < 209);||2160||@116-6@
/* (canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_canc.class = '1') AND (cg_sb2.id < 209);||1064||@116-7@
SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb2.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_sb1.id >= 7153) AND (cg_sb2.id >= 591);||590848||@117-0@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc;||329||@117-1@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1 WHERE (cg_sb1.id >= 7153);||6410||@117-2@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2 WHERE (cg_sb2.id >= 591);||336||@117-3@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7;||4134||@117-4@
/* (canc cg_canc, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_sb1.id >= 7153);||6320||@117-5@
/* (canc cg_canc, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_sb2.id >= 591);||318||@117-6@
/* (canc cg_canc, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb7.drug);||4064||@117-7@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.id >= 7153) AND (cg_sb2.id >= 591);||14728||@117-8@
/* (sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb7.drug) AND (cg_sb1.id >= 7153);||101168||@117-9@
/* (sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb2.drug = cg_sb7.drug) AND (cg_sb2.id >= 591);||9180||@117-10@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb2.drug) AND (cg_sb1.id >= 7153) AND (cg_sb2.id >= 591);||14728||@117-11@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_sb1.id >= 7153);||101168||@117-12@
/* (canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_sb2.id >= 591);||9180||@117-13@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.drug = cg_sb7.drug) AND (cg_sb1.id >= 7153) AND (cg_sb2.id >= 591);||590848||@117-14@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb2.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_sb1.id >= 7153) AND (cg_sb2.id >= 591);||590848||@117-15@
SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb7.drug) AND (cg_atm.drug = cg_sb2.drug) AND (cg_canc.id = cg_sb2.drug) AND (cg_atm.charge = 'a0=0_1375<x<=+inf') AND (cg_atm.name = 'na') AND (cg_sb2.id >= 217) AND (cg_sb7.id >= 1747);||1040||@118-0@
/* (atom cg_atm) */ SELECT COUNT(*) FROM atom cg_atm WHERE (cg_atm.charge = 'a0=0_1375<x<=+inf') AND (cg_atm.name = 'na');||16||@118-1@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc;||329||@118-2@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2 WHERE (cg_sb2.id >= 217);||710||@118-3@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7 WHERE (cg_sb7.id >= 1747);||2388||@118-4@
/* (atom cg_atm, canc cg_canc) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.charge = 'a0=0_1375<x<=+inf') AND (cg_atm.name = 'na');||14||@118-5@
/* (atom cg_atm, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_sb2.drug) AND (cg_atm.charge = 'a0=0_1375<x<=+inf') AND (cg_atm.name = 'na') AND (cg_sb2.id >= 217);||80||@118-6@
/* (atom cg_atm, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb7.drug) AND (cg_atm.charge = 'a0=0_1375<x<=+inf') AND (cg_atm.name = 'na') AND (cg_sb7.id >= 1747);||116||@118-7@
/* (canc cg_canc, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_sb2.id >= 217);||688||@118-8@
/* (canc cg_canc, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb7.drug) AND (cg_sb7.id >= 1747);||2342||@118-9@
/* (sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb2.drug = cg_sb7.drug) AND (cg_sb2.id >= 217) AND (cg_sb7.id >= 1747);||10396||@118-10@
/* (atom cg_atm, canc cg_canc, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb2.drug) AND (cg_atm.charge = 'a0=0_1375<x<=+inf') AND (cg_atm.name = 'na') AND (cg_sb2.id >= 217);||80||@118-11@
/* (atom cg_atm, canc cg_canc, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.charge = 'a0=0_1375<x<=+inf') AND (cg_atm.name = 'na') AND (cg_sb7.id >= 1747);||116||@118-12@
/* (atom cg_atm, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb2.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.charge = 'a0=0_1375<x<=+inf') AND (cg_atm.name = 'na') AND (cg_sb2.id >= 217) AND (cg_sb7.id >= 1747);||1040||@118-13@
/* (canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_sb2.drug = cg_sb7.drug) AND (cg_sb2.id >= 217) AND (cg_sb7.id >= 1747);||10396||@118-14@
/* (atom cg_atm, canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb2.drug) AND (cg_canc.id = cg_sb2.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.charge = 'a0=0_1375<x<=+inf') AND (cg_atm.name = 'na') AND (cg_sb2.id >= 217) AND (cg_sb7.id >= 1747);||1040||@118-15@
select count(*) from atom as cg_atm, canc as cg_canc, sbond_1 as cg_sb1, sbond_2 as cg_sb2, sbond_3 as cg_sb3, sbond_7 as cg_sb7 where cg_atm.drug = cg_canc.id and cg_canc.id = cg_sb1.drug and cg_canc.id = cg_sb2.drug and cg_canc.id = cg_sb3.drug and cg_canc.id = cg_sb7.drug and cg_atm.charge = 'a0=0_0615<x<=0_1375' and cg_atm.atomtype = '3';||1728||@119-0@
/* (atom cg_atm) */ SELECT COUNT(*) FROM atom cg_atm WHERE (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_atm.atomtype = '3');||1607||@119-1@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc;||329||@119-2@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1;||13562||@119-3@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2;||926||@119-4@
/* (sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_3 cg_sb3;||12||@119-5@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7;||4134||@119-6@
/* (atom cg_atm, canc cg_canc) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_atm.atomtype = '3');||1593||@119-7@
/* (atom cg_atm, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_atm.atomtype = '3');||131152||@119-8@
/* (atom cg_atm, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_sb2.drug) AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_atm.atomtype = '3');||4958||@119-9@
/* (atom cg_atm, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM atom cg_atm, sbond_3 cg_sb3 WHERE (cg_atm.drug = cg_sb3.drug) AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_atm.atomtype = '3');||4||@119-10@
/* (atom cg_atm, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb7.drug) AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_atm.atomtype = '3');||19544||@119-11@
/* (canc cg_canc, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1 WHERE (cg_canc.id = cg_sb1.drug);||13422||@119-12@
/* (canc cg_canc, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb2.drug);||900||@119-13@
/* (canc cg_canc, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM canc cg_canc, sbond_3 cg_sb3 WHERE (cg_canc.id = cg_sb3.drug);||8||@119-14@
/* (canc cg_canc, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb7.drug);||4064||@119-15@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_sb1.drug = cg_sb2.drug);||46228||@119-16@
/* (sbond_1 cg_sb1, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_3 cg_sb3 WHERE (cg_sb1.drug = cg_sb3.drug);||120||@119-17@
/* (sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb7.drug);||173060||@119-18@
/* (sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_sb2.drug = cg_sb3.drug);||8||@119-19@
/* (sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb2.drug = cg_sb7.drug);||14728||@119-20@
/* (sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb3.drug = cg_sb7.drug);||96||@119-21@
/* (atom cg_atm, canc cg_canc, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_1 cg_sb1 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb1.drug) AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_atm.atomtype = '3');||131152||@119-22@
/* (atom cg_atm, canc cg_canc, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb2.drug) AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_atm.atomtype = '3');||4958||@119-23@
/* (atom cg_atm, canc cg_canc, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_3 cg_sb3 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb3.drug) AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_atm.atomtype = '3');||4||@119-24@
/* (atom cg_atm, canc cg_canc, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_atm.atomtype = '3');||19544||@119-25@
/* (atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb2.drug) AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_atm.atomtype = '3');||439660||@119-26@
/* (atom cg_atm, sbond_1 cg_sb1, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_3 cg_sb3 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb3.drug) AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_atm.atomtype = '3');||72||@119-27@
/* (atom cg_atm, sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_atm.atomtype = '3');||1085624||@119-28@
/* (atom cg_atm, sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM atom cg_atm, sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_atm.drug = cg_sb2.drug) AND (cg_atm.drug = cg_sb3.drug) AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_atm.atomtype = '3');||8||@119-29@
/* (atom cg_atm, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb2.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_atm.atomtype = '3');||79244||@119-30@
/* (atom cg_atm, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb3.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_atm.atomtype = '3');||48||@119-31@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb2.drug);||46228||@119-32@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_3 cg_sb3 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb3.drug);||120||@119-33@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb7.drug);||173060||@119-34@
/* (canc cg_canc, sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_canc.id = cg_sb3.drug);||8||@119-35@
/* (canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_canc.id = cg_sb7.drug);||14728||@119-36@
/* (canc cg_canc, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb3.drug) AND (cg_canc.id = cg_sb7.drug);||96||@119-37@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.drug = cg_sb3.drug);||144||@119-38@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.drug = cg_sb7.drug);||868024||@119-39@
/* (sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb3.drug) AND (cg_sb1.drug = cg_sb7.drug);||1440||@119-40@
/* (sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb2.drug = cg_sb3.drug) AND (cg_sb2.drug = cg_sb7.drug);||96||@119-41@
/* (atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_canc.id) AND (cg_canc.id = cg_sb1.drug) AND (cg_atm.drug = cg_sb2.drug) AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_atm.atomtype = '3');||439660||@119-42@
/* (atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_3 cg_sb3 WHERE (cg_atm.drug = cg_canc.id) AND (cg_canc.id = cg_sb1.drug) AND (cg_atm.drug = cg_sb3.drug) AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_atm.atomtype = '3');||72||@119-43@
/* (atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_canc.id) AND (cg_canc.id = cg_sb1.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_atm.atomtype = '3');||1085624||@119-44@
/* (atom cg_atm, canc cg_canc, sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb2.drug) AND (cg_atm.drug = cg_sb3.drug) AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_atm.atomtype = '3');||8||@119-45@
/* (atom cg_atm, canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb2.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_atm.atomtype = '3');||79244||@119-46@
/* (atom cg_atm, canc cg_canc, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_canc.id) AND (cg_canc.id = cg_sb3.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_atm.atomtype = '3');||48||@119-47@
/* (atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb2.drug) AND (cg_atm.drug = cg_sb3.drug) AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_atm.atomtype = '3');||144||@119-48@
/* (atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb2.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_atm.atomtype = '3');||5349824||@119-49@
/* (atom cg_atm, sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb3.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_atm.atomtype = '3');||864||@119-50@
/* (atom cg_atm, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb2.drug) AND (cg_sb2.drug = cg_sb3.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_atm.atomtype = '3');||96||@119-51@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb2.drug) AND (cg_canc.id = cg_sb3.drug);||144||@119-52@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb2.drug) AND (cg_canc.id = cg_sb7.drug);||868024||@119-53@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb3.drug) AND (cg_canc.id = cg_sb7.drug);||1440||@119-54@
/* (canc cg_canc, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_canc.id = cg_sb3.drug) AND (cg_canc.id = cg_sb7.drug);||96||@119-55@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb2.drug = cg_sb3.drug) AND (cg_sb1.drug = cg_sb7.drug);||1728||@119-56@
/* (atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_atm.drug = cg_canc.id) AND (cg_canc.id = cg_sb1.drug) AND (cg_atm.drug = cg_sb2.drug) AND (cg_atm.drug = cg_sb3.drug) AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_atm.atomtype = '3');||144||@119-57@
/* (atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_canc.id) AND (cg_canc.id = cg_sb1.drug) AND (cg_atm.drug = cg_sb2.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_atm.atomtype = '3');||5349824||@119-58@
/* (atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb1.drug) AND (cg_canc.id = cg_sb3.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_atm.atomtype = '3');||864||@119-59@
/* (atom cg_atm, canc cg_canc, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb2.drug) AND (cg_canc.id = cg_sb3.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_atm.atomtype = '3');||96||@119-60@
/* (atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb2.drug) AND (cg_sb2.drug = cg_sb3.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_atm.atomtype = '3');||1728||@119-61@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb2.drug) AND (cg_sb1.drug = cg_sb2.drug) AND (cg_canc.id = cg_sb3.drug) AND (cg_canc.id = cg_sb7.drug);||1728||@119-62@
/* (atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb2.drug) AND (cg_canc.id = cg_sb3.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.charge = 'a0=0_0615<x<=0_1375') AND (cg_atm.atomtype = '3');||1728||@119-63@
SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_canc.class = '1') AND (cg_sb2.id < 900);||446||@120-0@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc WHERE (cg_canc.class = '1');||182||@120-1@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2 WHERE (cg_sb2.id < 900);||899||@120-2@
/* (canc cg_canc, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_canc.class = '1') AND (cg_sb2.id < 900);||446||@120-3@
SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_sb1.id < 10264);||10199||@121-0@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc;||329||@121-1@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1 WHERE (cg_sb1.id < 10264);||10263||@121-2@
/* (canc cg_canc, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_sb1.id < 10264);||10199||@121-3@
SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_1 cg_sb1 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb1.drug) AND (cg_atm.name = 'o') AND (cg_atm.atomtype = '50');||14758||@122-0@
/* (atom cg_atm) */ SELECT COUNT(*) FROM atom cg_atm WHERE (cg_atm.name = 'o') AND (cg_atm.atomtype = '50');||127||@122-1@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc;||329||@122-2@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1;||13562||@122-3@
/* (atom cg_atm, canc cg_canc) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.name = 'o') AND (cg_atm.atomtype = '50');||126||@122-4@
/* (atom cg_atm, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.name = 'o') AND (cg_atm.atomtype = '50');||14758||@122-5@
/* (canc cg_canc, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1 WHERE (cg_canc.id = cg_sb1.drug);||13422||@122-6@
/* (atom cg_atm, canc cg_canc, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_1 cg_sb1 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb1.drug) AND (cg_atm.name = 'o') AND (cg_atm.atomtype = '50');||14758||@122-7@
SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb2.drug) AND (cg_atm.name = 'p') AND (cg_sb1.id < 10185) AND (cg_sb2.id < 561);||4116||@123-0@
/* (atom cg_atm) */ SELECT COUNT(*) FROM atom cg_atm WHERE (cg_atm.name = 'p');||23||@123-1@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1 WHERE (cg_sb1.id < 10185);||10184||@123-2@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2 WHERE (cg_sb2.id < 561);||560||@123-3@
/* (atom cg_atm, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.name = 'p') AND (cg_sb1.id < 10185);||1338||@123-4@
/* (atom cg_atm, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_sb2.drug) AND (cg_atm.name = 'p') AND (cg_sb2.id < 561);||68||@123-5@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.id < 10185) AND (cg_sb2.id < 561);||28984||@123-6@
/* (atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb2.drug) AND (cg_atm.name = 'p') AND (cg_sb1.id < 10185) AND (cg_sb2.id < 561);||4116||@123-7@
SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_sb1.drug = cg_sb2.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.atomtype = '3') AND (cg_sb7.id < 921);||2015144||@124-0@
/* (atom cg_atm) */ SELECT COUNT(*) FROM atom cg_atm WHERE (cg_atm.atomtype = '3');||3597||@124-1@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1;||13562||@124-2@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2;||926||@124-3@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7 WHERE (cg_sb7.id < 921);||920||@124-4@
/* (atom cg_atm, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.atomtype = '3');||302012||@124-5@
/* (atom cg_atm, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_sb2.drug) AND (cg_atm.atomtype = '3');||11826||@124-6@
/* (atom cg_atm, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb7.drug) AND (cg_atm.atomtype = '3') AND (cg_sb7.id < 921);||10610||@124-7@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_sb1.drug = cg_sb2.drug);||46228||@124-8@
/* (sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb7.drug) AND (cg_sb7.id < 921);||37908||@124-9@
/* (sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb2.drug = cg_sb7.drug) AND (cg_sb7.id < 921);||1756||@124-10@
/* (atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb2.drug) AND (cg_atm.atomtype = '3');||1163000||@124-11@
/* (atom cg_atm, sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.atomtype = '3') AND (cg_sb7.id < 921);||660124||@124-12@
/* (atom cg_atm, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb2.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.atomtype = '3') AND (cg_sb7.id < 921);||25628||@124-13@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.drug = cg_sb7.drug) AND (cg_sb7.id < 921);||98344||@124-14@
/* (atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_sb1.drug = cg_sb2.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.atomtype = '3') AND (cg_sb7.id < 921);||2015144||@124-15@
SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_canc.id) AND (cg_canc.id = cg_sb2.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_sb2.id < 283);||108072||@125-0@
/* (atom cg_atm) */ SELECT COUNT(*) FROM atom cg_atm;||9064||@125-1@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc;||329||@125-2@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2 WHERE (cg_sb2.id < 283);||282||@125-3@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7;||4134||@125-4@
/* (atom cg_atm, canc cg_canc) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc WHERE (cg_atm.drug = cg_canc.id);||8982||@125-5@
/* (atom cg_atm, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_sb2.drug) AND (cg_sb2.id < 283);||9940||@125-6@
/* (atom cg_atm, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb7.drug);||137216||@125-7@
/* (canc cg_canc, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_sb2.id < 283);||276||@125-8@
/* (canc cg_canc, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb7.drug);||4064||@125-9@
/* (sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb2.drug = cg_sb7.drug) AND (cg_sb2.id < 283);||2956||@125-10@
/* (atom cg_atm, canc cg_canc, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb2.drug) AND (cg_sb2.id < 283);||9940||@125-11@
/* (atom cg_atm, canc cg_canc, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb7.drug);||137216||@125-12@
/* (atom cg_atm, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb2.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_sb2.id < 283);||108072||@125-13@
/* (canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_sb2.id < 283);||2956||@125-14@
/* (atom cg_atm, canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_canc.id) AND (cg_canc.id = cg_sb2.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_sb2.id < 283);||108072||@125-15@
SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_canc.id = cg_sb3.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_sb2.id < 210);||96||@126-0@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc;||329||@126-1@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2 WHERE (cg_sb2.id < 210);||209||@126-2@
/* (sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_3 cg_sb3;||12||@126-3@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7;||4134||@126-4@
/* (canc cg_canc, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_sb2.id < 210);||205||@126-5@
/* (canc cg_canc, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM canc cg_canc, sbond_3 cg_sb3 WHERE (cg_canc.id = cg_sb3.drug);||8||@126-6@
/* (canc cg_canc, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb7.drug);||4064||@126-7@
/* (sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_sb2.drug = cg_sb3.drug) AND (cg_sb2.id < 210);||8||@126-8@
/* (sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb2.drug = cg_sb7.drug) AND (cg_sb2.id < 210);||2172||@126-9@
/* (sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb3.drug = cg_sb7.drug);||96||@126-10@
/* (canc cg_canc, sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_canc.id = cg_sb3.drug) AND (cg_sb2.id < 210);||8||@126-11@
/* (canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_sb2.id < 210);||2172||@126-12@
/* (canc cg_canc, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb3.drug) AND (cg_canc.id = cg_sb7.drug);||96||@126-13@
/* (sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb2.drug = cg_sb3.drug) AND (cg_sb2.drug = cg_sb7.drug) AND (cg_sb2.id < 210);||96||@126-14@
/* (canc cg_canc, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_canc.id = cg_sb3.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_sb2.id < 210);||96||@126-15@
SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb2.drug) AND (cg_atm.drug = cg_sb3.drug) AND (cg_atm.atomtype = '3') AND (cg_atm.charge = 'a0=0_1375<x<=+inf');||576||@127-0@
/* (atom cg_atm) */ SELECT COUNT(*) FROM atom cg_atm WHERE (cg_atm.atomtype = '3') AND (cg_atm.charge = 'a0=0_1375<x<=+inf');||578||@127-1@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1;||13562||@127-2@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2;||926||@127-3@
/* (sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_3 cg_sb3;||12||@127-4@
/* (atom cg_atm, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.atomtype = '3') AND (cg_atm.charge = 'a0=0_1375<x<=+inf');||26294||@127-5@
/* (atom cg_atm, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_sb2.drug) AND (cg_atm.atomtype = '3') AND (cg_atm.charge = 'a0=0_1375<x<=+inf');||2592||@127-6@
/* (atom cg_atm, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM atom cg_atm, sbond_3 cg_sb3 WHERE (cg_atm.drug = cg_sb3.drug) AND (cg_atm.atomtype = '3') AND (cg_atm.charge = 'a0=0_1375<x<=+inf');||16||@127-7@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_sb1.drug = cg_sb2.drug);||46228||@127-8@
/* (sbond_1 cg_sb1, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_3 cg_sb3 WHERE (cg_sb1.drug = cg_sb3.drug);||120||@127-9@
/* (sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_sb2.drug = cg_sb3.drug);||8||@127-10@
/* (atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb2.drug) AND (cg_atm.atomtype = '3') AND (cg_atm.charge = 'a0=0_1375<x<=+inf');||167340||@127-11@
/* (atom cg_atm, sbond_1 cg_sb1, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_3 cg_sb3 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb3.drug) AND (cg_atm.atomtype = '3') AND (cg_atm.charge = 'a0=0_1375<x<=+inf');||288||@127-12@
/* (atom cg_atm, sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM atom cg_atm, sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_atm.drug = cg_sb2.drug) AND (cg_atm.drug = cg_sb3.drug) AND (cg_atm.atomtype = '3') AND (cg_atm.charge = 'a0=0_1375<x<=+inf');||32||@127-13@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.drug = cg_sb3.drug);||144||@127-14@
/* (atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb2.drug) AND (cg_atm.drug = cg_sb3.drug) AND (cg_atm.atomtype = '3') AND (cg_atm.charge = 'a0=0_1375<x<=+inf');||576||@127-15@
SELECT COUNT(*) FROM canc cg_canc, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb7.drug) AND (cg_canc.class = '0') AND (cg_sb7.id >= 3375) AND (cg_sb7.id < 4135);||460||@128-0@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc WHERE (cg_canc.class = '0');||147||@128-1@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7 WHERE (cg_sb7.id >= 3375) AND (cg_sb7.id < 4135);||760||@128-2@
/* (canc cg_canc, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb7.drug) AND (cg_canc.class = '0') AND (cg_sb7.id >= 3375) AND (cg_sb7.id < 4135);||460||@128-3@
SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb2.drug) AND (cg_canc.class = '0') AND (cg_sb1.id < 12582) AND (cg_sb2.id < 596);||20192||@129-0@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc WHERE (cg_canc.class = '0');||147||@129-1@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1 WHERE (cg_sb1.id < 12582);||12581||@129-2@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2 WHERE (cg_sb2.id < 596);||595||@129-3@
/* (canc cg_canc, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.class = '0') AND (cg_sb1.id < 12582);||6459||@129-4@
/* (canc cg_canc, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_canc.class = '0') AND (cg_sb2.id < 596);||320||@129-5@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.id < 12582) AND (cg_sb2.id < 596);||31544||@129-6@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb2.drug) AND (cg_canc.class = '0') AND (cg_sb1.id < 12582) AND (cg_sb2.id < 596);||20192||@129-7@
SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_canc.id) AND (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb2.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_sb1.id < 13086) AND (cg_sb2.id >= 616) AND (cg_sb2.id < 903);||38652888||@130-0@
/* (atom cg_atm) */ SELECT COUNT(*) FROM atom cg_atm;||9064||@130-1@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc;||329||@130-2@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1 WHERE (cg_sb1.id < 13086);||13085||@130-3@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2 WHERE (cg_sb2.id >= 616) AND (cg_sb2.id < 903);||287||@130-4@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7;||4134||@130-5@
/* (atom cg_atm, canc cg_canc) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc WHERE (cg_atm.drug = cg_canc.id);||8982||@130-6@
/* (atom cg_atm, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_sb1.id < 13086);||628866||@130-7@
/* (atom cg_atm, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_sb2.drug) AND (cg_sb2.id >= 616) AND (cg_sb2.id < 903);||11403||@130-8@
/* (atom cg_atm, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb7.drug);||137216||@130-9@
/* (canc cg_canc, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_sb1.id < 13086);||12945||@130-10@
/* (canc cg_canc, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_sb2.id >= 616) AND (cg_sb2.id < 903);||277||@130-11@
/* (canc cg_canc, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb7.drug);||4064||@130-12@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.id < 13086) AND (cg_sb2.id >= 616) AND (cg_sb2.id < 903);||13242||@130-13@
/* (sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb7.drug) AND (cg_sb1.id < 13086);||166148||@130-14@
/* (sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb2.drug = cg_sb7.drug) AND (cg_sb2.id >= 616) AND (cg_sb2.id < 903);||8668||@130-15@
/* (atom cg_atm, canc cg_canc, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_1 cg_sb1 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb1.drug) AND (cg_sb1.id < 13086);||628866||@130-16@
/* (atom cg_atm, canc cg_canc, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb2.drug) AND (cg_sb2.id >= 616) AND (cg_sb2.id < 903);||11403||@130-17@
/* (atom cg_atm, canc cg_canc, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb7.drug);||137216||@130-18@
/* (atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb2.drug) AND (cg_sb1.id < 13086) AND (cg_sb2.id >= 616) AND (cg_sb2.id < 903);||721294||@130-19@
/* (atom cg_atm, sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_sb1.id < 13086);||7641196||@130-20@
/* (atom cg_atm, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb2.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_sb2.id >= 616) AND (cg_sb2.id < 903);||501852||@130-21@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb2.drug) AND (cg_sb1.id < 13086) AND (cg_sb2.id >= 616) AND (cg_sb2.id < 903);||13242||@130-22@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_sb1.id < 13086);||166148||@130-23@
/* (canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_sb2.id >= 616) AND (cg_sb2.id < 903);||8668||@130-24@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.drug = cg_sb7.drug) AND (cg_sb1.id < 13086) AND (cg_sb2.id >= 616) AND (cg_sb2.id < 903);||569632||@130-25@
/* (atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_canc.id) AND (cg_canc.id = cg_sb1.drug) AND (cg_atm.drug = cg_sb2.drug) AND (cg_sb1.id < 13086) AND (cg_sb2.id >= 616) AND (cg_sb2.id < 903);||721294||@130-26@
/* (atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_canc.id) AND (cg_canc.id = cg_sb1.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_sb1.id < 13086);||7641196||@130-27@
/* (atom cg_atm, canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_canc.id) AND (cg_canc.id = cg_sb2.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_sb2.id >= 616) AND (cg_sb2.id < 903);||501852||@130-28@
/* (atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_sb1.drug = cg_sb2.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_sb1.id < 13086) AND (cg_sb2.id >= 616) AND (cg_sb2.id < 903);||38652888||@130-29@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb2.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_sb1.id < 13086) AND (cg_sb2.id >= 616) AND (cg_sb2.id < 903);||569632||@130-30@
/* (atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_canc.id) AND (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb2.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_sb1.id < 13086) AND (cg_sb2.id >= 616) AND (cg_sb2.id < 903);||38652888||@130-31@
SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.class = '0') AND (cg_sb1.id >= 3672) AND (cg_sb1.id < 6783);||2295||@131-0@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc WHERE (cg_canc.class = '0');||147||@131-1@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1 WHERE (cg_sb1.id >= 3672) AND (cg_sb1.id < 6783);||3111||@131-2@
/* (canc cg_canc, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.class = '0') AND (cg_sb1.id >= 3672) AND (cg_sb1.id < 6783);||2295||@131-3@
SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb7.drug) AND (cg_atm.drug = cg_sb1.drug) AND (cg_sb1.drug = cg_sb2.drug) AND (cg_atm.atomtype = '2') AND (cg_atm.charge = 'a0=0_1375<x<=+inf') AND (cg_sb1.id < 10679) AND (cg_sb7.id < 1074);||4224||@132-0@
/* (atom cg_atm) */ SELECT COUNT(*) FROM atom cg_atm WHERE (cg_atm.atomtype = '2') AND (cg_atm.charge = 'a0=0_1375<x<=+inf');||2||@132-1@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1 WHERE (cg_sb1.id < 10679);||10678||@132-2@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2;||926||@132-3@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7 WHERE (cg_sb7.id < 1074);||1073||@132-4@
/* (atom cg_atm, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.atomtype = '2') AND (cg_atm.charge = 'a0=0_1375<x<=+inf') AND (cg_sb1.id < 10679);||88||@132-5@
/* (atom cg_atm, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_sb2.drug) AND (cg_atm.atomtype = '2') AND (cg_atm.charge = 'a0=0_1375<x<=+inf');||8||@132-6@
/* (atom cg_atm, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb7.drug) AND (cg_atm.atomtype = '2') AND (cg_atm.charge = 'a0=0_1375<x<=+inf') AND (cg_sb7.id < 1074);||24||@132-7@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.id < 10679);||33956||@132-8@
/* (sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb7.drug) AND (cg_sb1.id < 10679) AND (cg_sb7.id < 1074);||44838||@132-9@
/* (sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb2.drug = cg_sb7.drug) AND (cg_sb7.id < 1074);||2178||@132-10@
/* (atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb2.drug) AND (cg_atm.atomtype = '2') AND (cg_atm.charge = 'a0=0_1375<x<=+inf') AND (cg_sb1.id < 10679);||352||@132-11@
/* (atom cg_atm, sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.atomtype = '2') AND (cg_atm.charge = 'a0=0_1375<x<=+inf') AND (cg_sb1.id < 10679) AND (cg_sb7.id < 1074);||1056||@132-12@
/* (atom cg_atm, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb2.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.atomtype = '2') AND (cg_atm.charge = 'a0=0_1375<x<=+inf') AND (cg_sb7.id < 1074);||96||@132-13@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.drug = cg_sb7.drug) AND (cg_sb1.id < 10679) AND (cg_sb7.id < 1074);||118308||@132-14@
/* (atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb2.drug) AND (cg_sb1.drug = cg_sb2.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.atomtype = '2') AND (cg_atm.charge = 'a0=0_1375<x<=+inf') AND (cg_sb1.id < 10679) AND (cg_sb7.id < 1074);||4224||@132-15@
SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.drug = cg_sb3.drug) AND (cg_sb1.id < 5189);||144||@133-0@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1 WHERE (cg_sb1.id < 5189);||5188||@133-1@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2;||926||@133-2@
/* (sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_3 cg_sb3;||12||@133-3@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.id < 5189);||14636||@133-4@
/* (sbond_1 cg_sb1, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_3 cg_sb3 WHERE (cg_sb1.drug = cg_sb3.drug) AND (cg_sb1.id < 5189);||72||@133-5@
/* (sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_sb2.drug = cg_sb3.drug);||8||@133-6@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.drug = cg_sb3.drug) AND (cg_sb1.id < 5189);||144||@133-7@
SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.charge = 'a0=0_1375<x<=+inf') AND (cg_sb1.id >= 6835);||1392968||@134-0@
/* (atom cg_atm) */ SELECT COUNT(*) FROM atom cg_atm WHERE (cg_atm.charge = 'a0=0_1375<x<=+inf');||1816||@134-1@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1 WHERE (cg_sb1.id >= 6835);||6728||@134-2@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7;||4134||@134-3@
/* (atom cg_atm, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.charge = 'a0=0_1375<x<=+inf') AND (cg_sb1.id >= 6835);||49242||@134-4@
/* (atom cg_atm, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb7.drug) AND (cg_atm.charge = 'a0=0_1375<x<=+inf');||34206||@134-5@
/* (sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb7.drug) AND (cg_sb1.id >= 6835);||102920||@134-6@
/* (atom cg_atm, sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.charge = 'a0=0_1375<x<=+inf') AND (cg_sb1.id >= 6835);||1392968||@134-7@
SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb3.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_canc.class = '1') AND (cg_sb1.id >= 7406) AND (cg_sb7.id >= 3312);||576||@135-0@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc WHERE (cg_canc.class = '1');||182||@135-1@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1 WHERE (cg_sb1.id >= 7406);||6157||@135-2@
/* (sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_3 cg_sb3;||12||@135-3@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7 WHERE (cg_sb7.id >= 3312);||823||@135-4@
/* (canc cg_canc, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.class = '1') AND (cg_sb1.id >= 7406);||3359||@135-5@
/* (canc cg_canc, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM canc cg_canc, sbond_3 cg_sb3 WHERE (cg_canc.id = cg_sb3.drug) AND (cg_canc.class = '1');||4||@135-6@
/* (canc cg_canc, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb7.drug) AND (cg_canc.class = '1') AND (cg_sb7.id >= 3312);||349||@135-7@
/* (sbond_1 cg_sb1, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_3 cg_sb3 WHERE (cg_sb1.drug = cg_sb3.drug) AND (cg_sb1.id >= 7406);||48||@135-8@
/* (sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb7.drug) AND (cg_sb1.id >= 7406) AND (cg_sb7.id >= 3312);||30954||@135-9@
/* (sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb3.drug = cg_sb7.drug) AND (cg_sb7.id >= 3312);||48||@135-10@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_3 cg_sb3 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb3.drug) AND (cg_canc.class = '1') AND (cg_sb1.id >= 7406);||48||@135-11@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_canc.class = '1') AND (cg_sb1.id >= 7406) AND (cg_sb7.id >= 3312);||11610||@135-12@
/* (canc cg_canc, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb3.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_canc.class = '1') AND (cg_sb7.id >= 3312);||48||@135-13@
/* (sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb3.drug) AND (cg_sb1.drug = cg_sb7.drug) AND (cg_sb1.id >= 7406) AND (cg_sb7.id >= 3312);||576||@135-14@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb3.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_canc.class = '1') AND (cg_sb1.id >= 7406) AND (cg_sb7.id >= 3312);||576||@135-15@
SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb2.drug) AND (cg_sb1.id >= 12157) AND (cg_sb1.id < 13563);||3952||@136-0@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc;||329||@136-1@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1 WHERE (cg_sb1.id >= 12157) AND (cg_sb1.id < 13563);||1406||@136-2@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2;||926||@136-3@
/* (canc cg_canc, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_sb1.id >= 12157) AND (cg_sb1.id < 13563);||1406||@136-4@
/* (canc cg_canc, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb2.drug);||900||@136-5@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.id >= 12157) AND (cg_sb1.id < 13563);||3952||@136-6@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb2.drug) AND (cg_sb1.id >= 12157) AND (cg_sb1.id < 13563);||3952||@136-7@
SELECT COUNT(*) FROM canc cg_canc, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb7.drug) AND (cg_canc.class = '0') AND (cg_sb7.id < 2089);||1064||@137-0@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc WHERE (cg_canc.class = '0');||147||@137-1@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7 WHERE (cg_sb7.id < 2089);||2088||@137-2@
/* (canc cg_canc, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb7.drug) AND (cg_canc.class = '0') AND (cg_sb7.id < 2089);||1064||@137-3@
SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb7.drug) AND (cg_atm.drug = cg_sb1.drug) AND (cg_canc.id = cg_sb1.drug) AND (cg_atm.atomtype = '115') AND (cg_sb1.id >= 5867);||1360||@138-0@
/* (atom cg_atm) */ SELECT COUNT(*) FROM atom cg_atm WHERE (cg_atm.atomtype = '115');||1||@138-1@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc;||329||@138-2@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1 WHERE (cg_sb1.id >= 5867);||7696||@138-3@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7;||4134||@138-4@
/* (atom cg_atm, canc cg_canc) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.atomtype = '115');||1||@138-5@
/* (atom cg_atm, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.atomtype = '115') AND (cg_sb1.id >= 5867);||40||@138-6@
/* (atom cg_atm, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb7.drug) AND (cg_atm.atomtype = '115');||34||@138-7@
/* (canc cg_canc, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_sb1.id >= 5867);||7606||@138-8@
/* (canc cg_canc, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb7.drug);||4064||@138-9@
/* (sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb7.drug) AND (cg_sb1.id >= 5867);||111820||@138-10@
/* (atom cg_atm, canc cg_canc, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_1 cg_sb1 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb1.drug) AND (cg_atm.atomtype = '115') AND (cg_sb1.id >= 5867);||40||@138-11@
/* (atom cg_atm, canc cg_canc, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.atomtype = '115');||34||@138-12@
/* (atom cg_atm, sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.atomtype = '115') AND (cg_sb1.id >= 5867);||1360||@138-13@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_sb1.drug = cg_sb7.drug) AND (cg_sb1.id >= 5867);||111820||@138-14@
/* (atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb1.drug) AND (cg_canc.id = cg_sb1.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_atm.atomtype = '115') AND (cg_sb1.id >= 5867);||1360||@138-15@
SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_canc.id) AND (cg_canc.id = cg_sb1.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_canc.class = '1') AND (cg_sb1.id >= 6772) AND (cg_sb1.id < 9569);||972172||@139-0@
/* (atom cg_atm) */ SELECT COUNT(*) FROM atom cg_atm;||9064||@139-1@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc WHERE (cg_canc.class = '1');||182||@139-2@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1 WHERE (cg_sb1.id >= 6772) AND (cg_sb1.id < 9569);||2797||@139-3@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7;||4134||@139-4@
/* (atom cg_atm, canc cg_canc) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc WHERE (cg_atm.drug = cg_canc.id) AND (cg_canc.class = '1');||4559||@139-5@
/* (atom cg_atm, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_sb1.id >= 6772) AND (cg_sb1.id < 9569);||131937||@139-6@
/* (atom cg_atm, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb7.drug);||137216||@139-7@
/* (canc cg_canc, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.class = '1') AND (cg_sb1.id >= 6772) AND (cg_sb1.id < 9569);||1675||@139-8@
/* (canc cg_canc, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb7.drug) AND (cg_canc.class = '1');||2314||@139-9@
/* (sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb7.drug) AND (cg_sb1.id >= 6772) AND (cg_sb1.id < 9569);||20592||@139-10@
/* (atom cg_atm, canc cg_canc, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_1 cg_sb1 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb1.drug) AND (cg_canc.class = '1') AND (cg_sb1.id >= 6772) AND (cg_sb1.id < 9569);||58285||@139-11@
/* (atom cg_atm, canc cg_canc, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb7.drug) AND (cg_canc.class = '1');||79362||@139-12@
/* (atom cg_atm, sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_sb1.id >= 6772) AND (cg_sb1.id < 9569);||1101084||@139-13@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb7.drug) AND (cg_canc.class = '1') AND (cg_sb1.id >= 6772) AND (cg_sb1.id < 9569);||16416||@139-14@
/* (atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_canc.id) AND (cg_canc.id = cg_sb1.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_canc.class = '1') AND (cg_sb1.id >= 6772) AND (cg_sb1.id < 9569);||972172||@139-15@
SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_atm.drug = cg_canc.id) AND (cg_canc.id = cg_sb2.drug) AND (cg_atm.drug = cg_sb3.drug);||144||@140-0@
/* (atom cg_atm) */ SELECT COUNT(*) FROM atom cg_atm;||9064||@140-1@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc;||329||@140-2@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2;||926||@140-3@
/* (sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_3 cg_sb3;||12||@140-4@
/* (atom cg_atm, canc cg_canc) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc WHERE (cg_atm.drug = cg_canc.id);||8982||@140-5@
/* (atom cg_atm, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_sb2.drug);||32424||@140-6@
/* (atom cg_atm, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM atom cg_atm, sbond_3 cg_sb3 WHERE (cg_atm.drug = cg_sb3.drug);||124||@140-7@
/* (canc cg_canc, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb2.drug);||900||@140-8@
/* (canc cg_canc, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM canc cg_canc, sbond_3 cg_sb3 WHERE (cg_canc.id = cg_sb3.drug);||8||@140-9@
/* (sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_sb2.drug = cg_sb3.drug);||8||@140-10@
/* (atom cg_atm, canc cg_canc, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb2.drug);||32424||@140-11@
/* (atom cg_atm, canc cg_canc, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_3 cg_sb3 WHERE (cg_atm.drug = cg_canc.id) AND (cg_atm.drug = cg_sb3.drug);||124||@140-12@
/* (atom cg_atm, sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM atom cg_atm, sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_atm.drug = cg_sb2.drug) AND (cg_atm.drug = cg_sb3.drug);||144||@140-13@
/* (canc cg_canc, sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_canc.id = cg_sb3.drug);||8||@140-14@
/* (atom cg_atm, canc cg_canc, sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM atom cg_atm, canc cg_canc, sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_atm.drug = cg_canc.id) AND (cg_canc.id = cg_sb2.drug) AND (cg_atm.drug = cg_sb3.drug);||144||@140-15@
SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_3 cg_sb3 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb3.drug) AND (cg_sb1.id < 13135);||1296||@141-0@
/* (atom cg_atm) */ SELECT COUNT(*) FROM atom cg_atm;||9064||@141-1@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1 WHERE (cg_sb1.id < 13135);||13134||@141-2@
/* (sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_3 cg_sb3;||12||@141-3@
/* (atom cg_atm, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_sb1.id < 13135);||632482||@141-4@
/* (atom cg_atm, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM atom cg_atm, sbond_3 cg_sb3 WHERE (cg_atm.drug = cg_sb3.drug);||124||@141-5@
/* (sbond_1 cg_sb1, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_3 cg_sb3 WHERE (cg_sb1.drug = cg_sb3.drug) AND (cg_sb1.id < 13135);||72||@141-6@
/* (atom cg_atm, sbond_1 cg_sb1, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_3 cg_sb3 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb3.drug) AND (cg_sb1.id < 13135);||1296||@141-7@
SELECT COUNT(*) FROM atom cg_atm, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb2.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_sb7.id < 1844);||177426||@142-0@
/* (atom cg_atm) */ SELECT COUNT(*) FROM atom cg_atm;||9064||@142-1@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2;||926||@142-2@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7 WHERE (cg_sb7.id < 1844);||1843||@142-3@
/* (atom cg_atm, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_sb2.drug);||32424||@142-4@
/* (atom cg_atm, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb7.drug) AND (cg_sb7.id < 1844);||59835||@142-5@
/* (sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb2.drug = cg_sb7.drug) AND (cg_sb7.id < 1844);||4570||@142-6@
/* (atom cg_atm, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb2.drug) AND (cg_atm.drug = cg_sb7.drug) AND (cg_sb7.id < 1844);||177426||@142-7@
SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb2.drug = cg_sb3.drug) AND (cg_sb1.drug = cg_sb7.drug) AND (cg_sb1.id < 7662);||1728||@143-0@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1 WHERE (cg_sb1.id < 7662);||7661||@143-1@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2;||926||@143-2@
/* (sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_3 cg_sb3;||12||@143-3@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7;||4134||@143-4@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.id < 7662);||23442||@143-5@
/* (sbond_1 cg_sb1, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_3 cg_sb3 WHERE (cg_sb1.drug = cg_sb3.drug) AND (cg_sb1.id < 7662);||72||@143-6@
/* (sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb7.drug) AND (cg_sb1.id < 7662);||79980||@143-7@
/* (sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_sb2.drug = cg_sb3.drug);||8||@143-8@
/* (sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb2.drug = cg_sb7.drug);||14728||@143-9@
/* (sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb3.drug = cg_sb7.drug);||96||@143-10@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.drug = cg_sb3.drug) AND (cg_sb1.id < 7662);||144||@143-11@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.drug = cg_sb7.drug) AND (cg_sb1.id < 7662);||238008||@143-12@
/* (sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb3.drug) AND (cg_sb1.drug = cg_sb7.drug) AND (cg_sb1.id < 7662);||864||@143-13@
/* (sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb2.drug = cg_sb3.drug) AND (cg_sb2.drug = cg_sb7.drug);||96||@143-14@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb2.drug = cg_sb3.drug) AND (cg_sb1.drug = cg_sb7.drug) AND (cg_sb1.id < 7662);||1728||@143-15@
SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.id >= 6516);||26038||@144-0@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1 WHERE (cg_sb1.id >= 6516);||7047||@144-1@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2;||926||@144-2@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.id >= 6516);||26038||@144-3@
SELECT COUNT(*) FROM atom cg_atm, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb7.drug) AND (cg_atm.name = 'c') AND (cg_atm.charge = 'a0=-inf<x<=-0_1355');||9016||@145-0@
/* (atom cg_atm) */ SELECT COUNT(*) FROM atom cg_atm WHERE (cg_atm.name = 'c') AND (cg_atm.charge = 'a0=-inf<x<=-0_1355');||499||@145-1@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7;||4134||@145-2@
/* (atom cg_atm, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM atom cg_atm, sbond_7 cg_sb7 WHERE (cg_atm.drug = cg_sb7.drug) AND (cg_atm.name = 'c') AND (cg_atm.charge = 'a0=-inf<x<=-0_1355');||9016||@145-3@
SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb7.drug) AND (cg_sb7.id < 844);||35844||@146-0@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1;||13562||@146-1@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7 WHERE (cg_sb7.id < 844);||843||@146-2@
/* (sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb7.drug) AND (cg_sb7.id < 844);||35844||@146-3@
SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb2.drug) AND (cg_atm.name = 'h') AND (cg_atm.charge = 'a0=-0_1355<x<=-0_0175') AND (cg_sb1.id < 5413) AND (cg_sb2.id < 711);||6384||@147-0@
/* (atom cg_atm) */ SELECT COUNT(*) FROM atom cg_atm WHERE (cg_atm.name = 'h') AND (cg_atm.charge = 'a0=-0_1355<x<=-0_0175');||33||@147-1@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1 WHERE (cg_sb1.id < 5413);||5412||@147-2@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2 WHERE (cg_sb2.id < 711);||710||@147-3@
/* (atom cg_atm, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.name = 'h') AND (cg_atm.charge = 'a0=-0_1355<x<=-0_0175') AND (cg_sb1.id < 5413);||1268||@147-4@
/* (atom cg_atm, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_sb2.drug) AND (cg_atm.name = 'h') AND (cg_atm.charge = 'a0=-0_1355<x<=-0_0175') AND (cg_sb2.id < 711);||156||@147-5@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.id < 5413) AND (cg_sb2.id < 711);||15244||@147-6@
/* (atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM atom cg_atm, sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_atm.drug = cg_sb1.drug) AND (cg_atm.drug = cg_sb2.drug) AND (cg_atm.name = 'h') AND (cg_atm.charge = 'a0=-0_1355<x<=-0_0175') AND (cg_sb1.id < 5413) AND (cg_sb2.id < 711);||6384||@147-7@
SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb2.drug) AND (cg_canc.id = cg_sb3.drug) AND (cg_sb1.id < 9576) AND (cg_sb2.id < 377);||144||@148-0@
/* (canc cg_canc) */ SELECT COUNT(*) FROM canc cg_canc;||329||@148-1@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1 WHERE (cg_sb1.id < 9576);||9575||@148-2@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2 WHERE (cg_sb2.id < 377);||376||@148-3@
/* (sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_3 cg_sb3;||12||@148-4@
/* (canc cg_canc, sbond_1 cg_sb1) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_sb1.id < 9576);||9523||@148-5@
/* (canc cg_canc, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_sb2.id < 377);||370||@148-6@
/* (canc cg_canc, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM canc cg_canc, sbond_3 cg_sb3 WHERE (cg_canc.id = cg_sb3.drug);||8||@148-7@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.id < 9576) AND (cg_sb2.id < 377);||21280||@148-8@
/* (sbond_1 cg_sb1, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_3 cg_sb3 WHERE (cg_sb1.drug = cg_sb3.drug) AND (cg_sb1.id < 9576);||72||@148-9@
/* (sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_sb2.drug = cg_sb3.drug) AND (cg_sb2.id < 377);||8||@148-10@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb2.drug) AND (cg_sb1.id < 9576) AND (cg_sb2.id < 377);||21280||@148-11@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_3 cg_sb3 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb3.drug) AND (cg_sb1.id < 9576);||72||@148-12@
/* (canc cg_canc, sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM canc cg_canc, sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_canc.id = cg_sb2.drug) AND (cg_canc.id = cg_sb3.drug) AND (cg_sb2.id < 377);||8||@148-13@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.drug = cg_sb3.drug) AND (cg_sb1.id < 9576) AND (cg_sb2.id < 377);||144||@148-14@
/* (canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM canc cg_canc, sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_canc.id = cg_sb1.drug) AND (cg_canc.id = cg_sb2.drug) AND (cg_canc.id = cg_sb3.drug) AND (cg_sb1.id < 9576) AND (cg_sb2.id < 377);||144||@148-15@
SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb2.drug = cg_sb3.drug) AND (cg_sb1.drug = cg_sb7.drug) AND (cg_sb1.id < 13269);||1728||@149-0@
/* (sbond_1 cg_sb1) */ SELECT COUNT(*) FROM sbond_1 cg_sb1 WHERE (cg_sb1.id < 13269);||13268||@149-1@
/* (sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_2 cg_sb2;||926||@149-2@
/* (sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_3 cg_sb3;||12||@149-3@
/* (sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_7 cg_sb7;||4134||@149-4@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.id < 13269);||45736||@149-5@
/* (sbond_1 cg_sb1, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_3 cg_sb3 WHERE (cg_sb1.drug = cg_sb3.drug) AND (cg_sb1.id < 13269);||72||@149-6@
/* (sbond_1 cg_sb1, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb7.drug) AND (cg_sb1.id < 13269);||170156||@149-7@
/* (sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_sb2.drug = cg_sb3.drug);||8||@149-8@
/* (sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb2.drug = cg_sb7.drug);||14728||@149-9@
/* (sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb3.drug = cg_sb7.drug);||96||@149-10@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.drug = cg_sb3.drug) AND (cg_sb1.id < 13269);||144||@149-11@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb1.drug = cg_sb7.drug) AND (cg_sb1.id < 13269);||865000||@149-12@
/* (sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb3.drug) AND (cg_sb1.drug = cg_sb7.drug) AND (cg_sb1.id < 13269);||864||@149-13@
/* (sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb2.drug = cg_sb3.drug) AND (cg_sb2.drug = cg_sb7.drug);||96||@149-14@
/* (sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7) */ SELECT COUNT(*) FROM sbond_1 cg_sb1, sbond_2 cg_sb2, sbond_3 cg_sb3, sbond_7 cg_sb7 WHERE (cg_sb1.drug = cg_sb2.drug) AND (cg_sb2.drug = cg_sb3.drug) AND (cg_sb1.drug = cg_sb7.drug) AND (cg_sb1.id < 13269);||1728||@149-15@
