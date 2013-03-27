abstract Two = {
	cat
		S ; NP ; VP ; V2 ; AP ; CN ;
		Cl ; 
	fun
		Pos, Neg : Cl -> S ; -- John is (not) old
		QPos, QNeg : Cl -> S ; -- is John old
		Pred : NP -> VP -> Cl ;
		Compl : V2 -> NP -> VP ;
		Adj : AP -> VP ; -- is old
		AdjMod : AP -> CN -> CN ; -- old man
		Every : CN -> NP ; --every man 
		All : CN -> NP ; --all men
		The  : CN -> NP ; 
		John, Mary : NP ;
		Love : V2 ;
		We : NP ;
		Old, Young : AP ; 
		Man, Woman : CN ;
}