concrete OneFre of One = {
  lincat
    S = Str ;
    NP = {s : Case => {c,p : Str} ; n : Number} ; 
    VP, V2 = Number => Str ;
  lin
    Pred np vp = (np.s ! Nom).p ++ vp ! np.n ;
    Compl v2 np = table {n => (np.s ! Acc).c ++ v2 ! n ++ (np.s ! Acc).p} ;
    John = {s = table {_ => {c = [] ; p = "Jean"}} ; n = Sg} ;
    Mary = {s = table {_ => {c = [] ; p = "Marie"}} ; n = Sg} ;
    Love = table {Sg => "aime" ; Pl => "aimons"} ;
    We = {s = table {Nom => {c = [] ; p = "nous"} ; Acc => {c = "nous" ; p = []}} ; n = Pl} ;
  param
    Number = Sg | Pl ;
    Case = Nom | Acc ;
    
}

