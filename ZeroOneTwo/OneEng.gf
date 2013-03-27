concrete OneEng of One = {
  lincat
    S = Str ;
    NP = {s : Case => Str ; n : Number} ; 
    VP, V2 = Number => Str ;
  lin
    Pred np vp = np.s ! Nom ++ vp ! np.n ;
    Compl v2 np = table {n => v2 ! n ++ np.s ! Acc} ;
    John = {s = table {_ => "John"} ; n = Sg} ;
    Mary = {s = table {_ => "Mary"} ; n = Sg} ;
    Love = table {Sg => "loves" ; Pl => "love"} ;
    We = {s = table {Nom => "we" ; Acc => "us"} ; n = Pl} ;
  param
    Number = Sg | Pl ;
    Case = Nom | Acc ;
    
}

