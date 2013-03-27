concrete TwoEng of Two = {
	lincat
		S = Str ;
		Cl = Ord => Pol => Str ; 
		NP = {s : Case => Str ; n : Number} ;
		VP = {v : Number => Str ; c : Str} ;
		V2 = Number => Str; 
		CN = Number => Str ;
		AP = Str ; 
	lin
		Pos cl = cl ! ODecl ! PPos ;
		Neg cl = cl ! ODecl ! PNeg ;
		QPos cl = cl ! OQuest ! PPos ;  
		QNeg cl = cl ! OQuest ! PNeg ;  
		Pred np vp = table {
			ODecl => table {
				PPos => np.s ! Nom ++ vp.v ! np.n ++ vp.c ;
				PNeg => np.s ! Nom ++ vp.v ! np.n ++ "not" ++ vp.c
				} ;
			OQuest => table {
				PPos => vp.v ! np.n ++ np.s ! Nom ++ vp.c ;
				PNeg => vp.v ! np.n ++ np.s ! Nom ++ "not" ++ vp.c
				} 
			} ;
		Compl v2 np = {v = table { Sg => "do" ; Pl => "do"} ; c = v2 ! Pl ++ np.s ! Acc} ;
		Adj ap = {v = table {Sg => "is" ; Pl => "are"}; c = ap} ;
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
		Ord = ODecl | OQuest ;
		Pol = PPos | PNeg ; 
}

