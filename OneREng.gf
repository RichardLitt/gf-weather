concrete OneREng of One = open SyntaxEng, ParadigmsEng in {
	lincat
		S = SyntaxEng.S ;
		NP = SyntaxEng.NP ;
		VP = SyntaxEng.VP ;
		V2 = SyntaxEng.V2 ; 
		CN = SyntaxEng.CN ;
		AP = SyntaxEng.AP ;
	lin
		Pred np vp = mkS (mkCl np vp) ;
		Compl v2 np = mkVP v2 np ;
		John = mkNP (mkPN "Jehn") ;
		Mary = mkNP (mkPN "Mary") ;
		Love = mkV2 (mkV "love") ;
		Man = mkCN (mkN "man" "men")  ;
		Woman = mkCN (mkN "woman" "women") ;
		Every cn = mkNP every_Det cn ;
		All cn = mkNP all_Predet ( mkNP aPl_Det cn ) ;
		We = we_NP ;
	param
		Number = Sg | Pl ;
		Case = Nom | Acc ;
}

