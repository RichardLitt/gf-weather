abstract Two = {
  cat  
    S ; NP ; VP ; V2 ; AP ; CN ;
    Cl ; 
  fun
    Pos, Neg : Cl -> S ;        -- John is (not) old   
    QPos, QNeg : Cl -> S ;   -- is John not old
    Pred  : NP -> VP -> Cl ;
    Compl : V2 -> NP -> VP ;
    Adj   : AP -> VP ;  -- is old
    Every : CN -> NP ;  -- every man
    John, Mary : NP ;
    Love : V2 ;
    We : NP ;
    Old, Young : AP ;
    Man, Woman : CN ;

}