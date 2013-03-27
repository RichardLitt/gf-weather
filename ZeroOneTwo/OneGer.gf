concrete OneGer of One = {
  lincat
    S = Str ;
    NP = {s : Case => Str ; n : Number} ; 
    VP, V2 = Number => Str ;
  lin
    Pred np vp = np.s ! Nom ++ vp ! np.n ;
    Compl v2 np = table {n => v2 ! n ++ np.s ! Acc} ;
    John = {s = table {_ => "Johann"} ; n = Sg} ;
    Mary = {s = table {_ => "Maria"} ; n = Sg} ;
    Love = table {Sg => "liebt" ; Pl => "lieben"} ;
    We = {s = table {Nom => "wir" ; Acc => "uns"} ; n = Pl} ;
  param
    Number = Sg | Pl ;
    Case = Nom | Acc ;
    
}

