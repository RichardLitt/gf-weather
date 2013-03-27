concrete OneRGer of One = open SyntaxGer, ParadigmsGer in {
	lincat
		S = SyntaxGer.S ;
		NP = SyntaxGer.NP ;
		VP = SyntaxGer.VP ;
		V2 = SyntaxGer.V2 ; 
	lin
		Pred np vp = mkS (mkCl np vp) ;
		Compl v2 np = mkVP v2 np ;
		John = mkNP (mkPN "Johann") ;
		Mary = mkNP (mkPN "Maria") ;
		Love = mkV2 (mkV "lieben") ;
		We = we_NP ;
	param
		Number = Sg | Pl ;
		Case = Nom | Acc ;
}

