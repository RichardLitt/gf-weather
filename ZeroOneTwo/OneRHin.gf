concrete OneRHin of One = open SyntaxHin, ParadigmsHin in {
  lincat
    S = SyntaxHin.S ;
    NP = SyntaxHin.NP ;
    VP = SyntaxHin.VP ;
    V2 = SyntaxHin.V2 ;
  lin
    Pred np vp = mkS (mkCl np vp) ;
    Compl v2 np = mkVP v2 np ;
    John = mkNP (mkPN "Jussi") ;
    Mary = mkNP (mkPN "Maria") ;
    Love = mkV2 (mkV "rakastaa") partitive ;
    We = we_NP ;
    
}

