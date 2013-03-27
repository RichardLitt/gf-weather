concrete WeatherGer of Weather = open SyntaxGer, ParadigmsGer in {
	
flags coding = utf8 ; 

lincat
	Report = Text;
	Location = Adv ;
	Time = Adv ; 
	Condition = CN ;

lin 
	RCondLocTime cond loc time = mkText (mkUtt (mkNP (mkNP (mkNP cond) loc) time )) ;

	CRain = mkCN (mkN "Regen") ;
	LSouth = SyntaxGer.mkAdv in_Prep (mkNP the_Det (mkN "Süden")) ;
	TMorning = SyntaxGer.mkAdv anDat_Prep (mkNP the_Det (mkN "Morgen")) ;
}