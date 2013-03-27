concrete OneGne of One = {
	lincat
		S = Str ;
		NP = {s : Case => Str ; n : Number} ;
		VP, V2 = Number => Str; 
		CN = Number => Str ;
		AP = Str ; 
		--     mkCN : AP -> CN -> CN ;      -- e.g. "warm pizza"
	lin
		Pred np vp = np.s ! Nom ++ vp ! np.n ;
		Compl v2 np = table {n => v2 ! n ++ np.s ! Acc} ;
		Adj ap = table {Sg => "is" ++ ap ; Pl => "are" ++ ap} ;
		AdjMod ap cn = table {Sg => ap ++ cn ! Sg ; Pl => ap ++ cn ! Pl} ; 
		John = {s = table {_ => "John"} ; n = Sg} ;
		Mary = {s = table {_ => "Mary"} ; n = Sg} ;
		Love = table {Sg => "loves" ; Pl => "love"} ;
		Man = table {Sg => "man" ; Pl => "men"} ;
		Woman = table {Sg => "woman" ; Pl => "women"} ;
		Old = "old" ;
		Young = "young" ;
		Every c = { s = table {_ => "every" ++ c ! Sg } ;  n = Sg} ;
		The c = { s = table {_ => "the" ++ c ! Sg } ;  n = Sg} ;
		All c = { s = table {_ => "all" ++ c ! Pl } ;  n = Pl} ;
		We = {s = table {Nom => "we" ; Acc => "us"} ; n = Pl} ;
	param
		Number = Sg | Pl ;
		Case = Nom | Acc ;
}

