abstract One = {
	cat
		S ; NP ; VP ; V2 ; AP ; CN ;
	fun
		Pred : NP -> VP -> S ;
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

-- Assignment 1: 
	-- 6 New Things in One
	-- - for Eng and x 
	-- Directly and with RGL (ResearchGrammarLibrary)