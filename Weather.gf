abstract Weather = {
	
	flags startcat = Report ;

cat 
	Report ;
	Location ;
	Time ;
	Condition ;

fun
	RCondLocTime : Condition -> Location -> Time -> Report  ; 
	CRain : Condition ;
	LSouth : Location ;
	TMorning : Time ;

	LName : Name -> Location ;
	NString : String -> Name ;

}