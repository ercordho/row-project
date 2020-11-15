waitUntil { isServer == false && !isNull player && player isEqualTo player };
if (player diarySubjectExists "controls") exitWith{};
player createDiarySubject["Test","Petit test"];

player createDiarySubject ["Test", ["Petit test de ces morts", "Ceci est un test"]];
