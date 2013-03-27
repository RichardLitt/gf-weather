concrete TwoREng of Two = open SyntaxEng, ParadigmsEng, ExtraEng in {
  lincat
    S = SyntaxEng.Utt ;
    Cl = SyntaxEng.Cl ;
    NP = SyntaxEng.NP ;
    VP = SyntaxEng.VP ;
    AP = SyntaxEng.AP ;
    CN = SyntaxEng.CN ;
    V2 = SyntaxEng.V2 ;
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
    Every cn = mkNP every_Det cn ;
    Love = mkV2 (mkV "love") ;
    Man = mkCN (mkN "man" "men") ;
    Woman = mkCN (mkN "woman" "women") ;
    Old = mkAP (mkA "old") ;
    Young = mkAP (mkA "young") ;
    We = we_NP ;
    
}

