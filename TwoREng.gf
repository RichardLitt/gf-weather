concrete TwoREng of Two = open SyntaxEng, ParadigmsEng, ExtraEng in {
	lincat
		S = SyntaxEng.Utt ;
		Cl = SyntaxEng.Cl ; 
		NP = SyntaxEng.NP ;
		VP = SyntaxEng.VP ;
		V2 = SyntaxEng.V2 ; 
		CN = SyntaxEng.CN ;
		AP = SyntaxEng.AP ;
	lin
		Pos cl = mkUtt (mkS positivePol cl) ; 
		Neg cl = mkUtt (mkS (UncNeg | negativePol) cl) ; 
		QPos cl = mkUtt (mkQS positivePol (mkQCl cl)) ; 
		QNeg cl = mkUtt (mkQS (UncNeg | negativePol) (mkQCl cl)) ; 
		Pred np vp = mkCl np vp ;
		Compl v2 np = mkVP v2 np ;
		Adj ap = mkVP ap ;
		John = mkNP (mkPN "John") ;
		Mary = mkNP (mkPN "Mary") ;
		Love = mkV2 (mkV "love") ;
		Man = mkCN (mkN "man" "men")  ;
		Woman = mkCN (mkN "woman" "women") ;
		Every cn = mkNP every_Det cn ;
		The cn = mkNP the_Det cn ;
		All cn = mkNP all_Predet ( mkNP aPl_Det cn ) ;
		We = we_NP ;
		Old = mkAP (mkA "old") ;
		Young = mkAP (mkA "young") ;
	param
		Number = Sg | Pl ;
		Case = Nom | Acc ;
}

