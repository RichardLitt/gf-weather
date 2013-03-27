concrete OneRFre of One = open SyntaxFre, ParadigmsFre in {
	lincat
		S = SyntaxFre.S ;
		NP = SyntaxFre.NP ;
		VP = SyntaxFre.VP ;
		V2 = SyntaxFre.V2 ; 
	lin
		Pred np vp = mkS (mkCl np vp) ;
		Compl v2 np = mkVP v2 np ;
		John = mkNP (mkPN "Jean") ;
		Mary = mkNP (mkPN "Marie") ;
		Love = mkV2 (mkV "aimer") ;
		We = we_NP ;
	param
		Number = Sg | Pl ;
		Case = Nom | Acc ;
}

