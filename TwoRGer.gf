concrete TwoRGer of Two = open SyntaxGer, ParadigmsGer, ExtraGer in {
	lincat
		S = SyntaxGer.Utt ;
		Cl = SyntaxGer.Cl ; 
		NP = SyntaxGer.NP ;
		VP = SyntaxGer.VP ;
		V2 = SyntaxGer.V2 ; 
		CN = SyntaxGer.CN ;
		AP = SyntaxGer.AP ;
	lin
		Pos cl = mkUtt (mkS positivePol cl) ; 
		Neg cl = mkUtt (mkS negativePol cl) ; 
		QPos cl = mkUtt (mkQS positivePol (mkQCl cl)) ; 
		QNeg cl = mkUtt (mkQS negativePol (mkQCl cl)) ; 
		Pred np vp = mkCl np vp ;
		Compl v2 np = mkVP v2 np ;
		Adj ap = mkVP ap ;
		John = mkNP (mkPN "Johann") ;
		Mary = mkNP (mkPN "Maria") ;
		Love = mkV2 (mkV "liebt") ;
		Man = mkCN (mkN "Mann" "Männer")  ;
		Woman = mkCN (mkN "Frau" "Frauen") ;
		-- Every cn = mkNP every_Det cn ;
		-- The cn = mkNP the_Det cn ;
		-- All cn = mkNP all_Predet ( mkNP aPl_Det cn ) ;
		-- We = we_NP ;
		Old = mkAP (mkA "alt") ;
		Young = mkAP (mkA "jung") ;
	param
		Number = Sg | Pl ;
		Case = Nom | Acc ;
}

