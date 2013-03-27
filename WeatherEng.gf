concrete WeatherEng of Weather = open SyntaxEng, ParadigmsEng in {
	
lincat
	Report = Text;
	Location = Adv ;
	Time = Adv ; 
	Condition = CN ;
	Name = Str ; 

lin 
	RCondLocTime cond loc time = mkText (mkUtt (mkNP (mkNP (mkNP cond) loc) time )) ;

	CRain = mkCN (mkN "rain") ;
	LSouth = SyntaxEng.mkAdv in_Prep (mkNP the_Det (mkN "south")) ;
	TMorning = SyntaxEng.mkAdv in_Prep (mkNP the_Det (mkN "morning")) ;

	LName s = symb s ; 
}