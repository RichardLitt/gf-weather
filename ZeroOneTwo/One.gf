abstract One = {
  cat  
    S ; NP ; VP ; V2 ; AP ; CN ;
  fun
    Pred  : NP -> VP -> S ;
    Compl : V2 -> NP -> VP ;
    Adj   : AP -> VP ;  -- is old
    Every : CN -> NP ;  -- every man
    John, Mary : NP ;
    Love : V2 ;
    We : NP ;
    Old, Young : AP ;
    Man, Woman : CN ;
}
