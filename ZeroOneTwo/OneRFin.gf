concrete OneRFin of One = open SyntaxFin, ParadigmsFin in {
  lincat
    S = SyntaxFin.S ;
    NP = SyntaxFin.NP ;
    VP = SyntaxFin.VP ;
    V2 = SyntaxFin.V2 ;
  lin
    Pred np vp = mkS (mkCl np vp) ;
    Compl v2 np = mkVP v2 np ;
    John = mkNP (mkPN "Jussi") ;
    Mary = mkNP (mkPN "Maria") ;
    Love = mkV2 (mkV "rakastaa") partitive ;
    We = we_NP ;
    
}

