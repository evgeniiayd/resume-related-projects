Program gas;
uses GraphABC;
var
  T1: real;
  a, a1, b, T: integer;
  
  n:=29;
  k:=1.4;
  g:=9.81;
  
  begin
    setwindowsize(1000, 1000);
    line(100,0,100,800);
    line(0,400,200,400);
    line(95,5,100,0);
    line(105,5,100,0);
    line(195,405,200,400);
    line(195,395,200,400);
    textout(60,0,'a, м/с');
    textout(195,406,'T, ℃');
    textout(90,404,'0');
    line(105,397,105,403);
    textout(103,405, '5');
    line(97,395,103,395);
    textout(89,383,'5');
    b:=0;
    a1:=0;
    for T:= 1 to 100 do
    begin
    a1:=a;
    a:=integer(sqrt(848*k*g/n)*sqrt(T+273));
    if (T<>1) then line(T+99,400-a1,T+100,400-a,clGreen)
    else
    begin
      line(97,400-a,103,400-a);
      textout(75,400-a,a);
    end;
    end;
    line(97,400-a,103,400-a);
    textout(75,400-a,a);
  end.
