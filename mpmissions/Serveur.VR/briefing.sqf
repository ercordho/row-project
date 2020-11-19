//waitUntil { isServer == false && !isNull player && player isEqualTo player };

//if (player diarySubjectExists "controls") exitWith{};

player createDiarySubject["Test","Petit test"];

player createDiaryRecord ["Test", ["Petit test de ces morts", "Ceci <br/>est<br/>un test<br/>"]];
