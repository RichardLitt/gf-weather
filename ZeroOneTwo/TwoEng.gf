concrete TwoEng of Two = {
  lincat
    S = Str ;
    Cl = Ord => Pol => Str ;
    NP = {s : Case => Str ; n : Number} ;
    AP = Str ;
    CN = Number => Str ; 
    V2 = Number => Str ;
    VP = {v : Number => Str ; c : Str} ; 
  lin
    
    Pos cl   = cl ! ODecl ! PPos ;
    Neg cl   = cl ! ODecl ! PNeg ;
    QPos cl  = cl ! OQuest ! PPos ;
    QNeg cl  = cl ! OQuest ! PNeg ;

    Pred np vp = table {
      ODecl => table {
        PPos => np.s ! Nom ++ vp.v ! np.n ++ vp.c ;
        PNeg => np.s ! Nom ++ vp.v ! np.n ++ "not" ++ vp.c
        } ;
      OQuest => table {
        PPos => vp.v ! np.n ++ np.s ! Nom ++ vp.c ;
        PNeg => vp.v ! np.n ++ np.s ! Nom ++ "not" ++ vp.c
        }
      } ;

-- 1    Compl v2 np = {v = table {n => v2 ! n} ; c = np.s ! Acc} ;
-- 2    Compl v2 np = 
--        {v = table {Sg => "do" ; Pl => "do"} ; c = v2 ! Pl ++ np.s ! Acc} ;

    Adj ap = {v = table {Sg => "is" ; Pl => "are"} ; c = ap} ;
 
   John = {s = table {_ => "John"} ; n = Sg} ;
    Mary = {s = table {_ => "Mary"} ; n = Sg} ;
    Love = table {Sg => "loves" ; Pl => "love"} ;
    Man = table {Sg => "man" ; Pl => "men"} ;
    Woman = table {Sg => "woman" ; Pl => "women"} ;
    Every cn = {s = table {_ => "every" ++ cn ! Sg} ; n = Sg} ;
    We = {s = table {Nom => "we" ; Acc => "us"} ; n = Pl} ;
    Old = "old" ;
    Young = "young" ;
  param
    Number = Sg | Pl ;
    Case = Nom | Acc ;
    Ord = ODecl | OQuest ;
    Pol = PPos | PNeg ;
}

