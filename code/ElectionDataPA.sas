proc import datafile = "U:\private/ElectionResultsPA.csv"
out = pa dbms = csv replace;
run;

proc print data = pa;
run;

data  pa;
	set pa;
	if Winner_2024 = "Trump" then win2024 = 1;
	else win2024 = 0;
run;

proc print data = pa (obs = 10);
var NAME Votes_tot win2024;
run;

proc logistic data = pa descending;
	model win2024 = percentnonwhite pctnothispanic pcthispanic pctforeignborn pctwhmalehsorless
	pctwhmalecollege pctwhfemalehsorless pctwhfemalecollege pctwhtotalpophsorless pctwhtotalpopcollege
	pctoldeconjobs pctmale2064lf pctfemale2064lf mhhinc medhomevalue unemploymentrate giniindex;
	run;

proc logistic data = pa descending;
	model win2024 = percentnonwhite pctnothispanic pcthispanic pctforeignborn pctwhmalehsorless
	pctwhmalecollege pctwhfemalehsorless pctwhfemalecollege pctwhtotalpophsorless pctwhtotalpopcollege
	pctoldeconjobs pctmale2064lf pctfemale2064lf mhhinc medhomevalue unemploymentrate giniindex / selection = backward sls = 0.20;
	run;

proc logistic data = pa descending;
	model win2024 = percentnonwhite pctnothispanic pcthispanic pctforeignborn pctwhmalehsorless
	pctwhmalecollege pctwhfemalehsorless pctwhfemalecollege pctwhtotalpophsorless pctwhtotalpopcollege
	pctoldeconjobs pctmale2064lf pctfemale2064lf mhhinc medhomevalue unemploymentrate giniindex / selection = forward sls = 0.20;
	run;

proc logistic data = pa descending;
	model win2024 = percentnonwhite pctnothispanic pcthispanic pctforeignborn pctwhmalehsorless
	pctwhmalecollege pctwhfemalehsorless pctwhfemalecollege pctwhtotalpophsorless pctwhtotalpopcollege
	pctoldeconjobs pctmale2064lf pctfemale2064lf mhhinc medhomevalue unemploymentrate giniindex / selection = stepwise sle = 0.2 sls = 0.25;
	run;

proc logistic data = pa descending;
	model win2024 = pctwhfemalehsorless;
	run;

proc reg data = pa;
	model Pct_Trump = percentnonwhite pctnothispanic pctforeignborn pctwhmalehsorless pctwhtotalpophsorless pctwhtotalpopcollege pctmale2064lf;
	run;

proc reg data = pa plots(only)=(QQ ResidualHistogram ResidualByPredicted RStudentByPredicted);
	model Pct_Trump = percentnonwhite pctwhfemalecollege pctwhtotalpophsorless mhhinc;
	output out=oldfit predicted=pred residual=resid rstudent=student;
run;

	run;

proc reg data = pa;
	model Pct_Stein = percentnonwhite pctnothispanic pcthispanic pctforeignborn pctwhmalehsorless
	pctwhmalecollege pctwhfemalehsorless pctwhfemalecollege pctwhtotalpophsorless pctwhtotalpopcollege
	pctoldeconjobs pctmale2064lf pctfemale2064lf mhhinc medhomevalue unemploymentrate giniindex / selection = stepwise sle = 0.15 sls = 0.2 vif;
	run;





