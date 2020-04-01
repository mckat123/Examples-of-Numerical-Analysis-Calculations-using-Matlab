function TC = TempEval(osf) 

%absolute temperature 
xl = 0+273.15; 
xu = 40 + 273.15; 
 
%if guesses do not bracket 
if fTa(xl,osf)*fTa(xu,osf)>0
%display an error message and terminate
error('no bracket')
end 

%assign the value of x1 to xr 

xr = xl; 

%for loop is sued for iteration 
for i = 1:10
    xrold = xr; 

%find the mid point value 
xr = (xl + xu)/2; 
if xr ~= 0, ea = abs((xr - xrold)/xr)*100; end
test= fTa(xl, osf)*fTa(xr, osf); 
if test < 0
    xu = xr; 
else 
    
    %otherwise assign zero to ea
    ea=0; 
end 
end 
TC = xr - 273.15; 

%define the function given

function f = fTa(Ta, osf) 
f = -139.34411 + 1.575701e5/Ta - 6.642308e7/Ta^2; 
f = f + 1.2438e10/Ta^3 - 8.621949e11/Ta^4;
f = f-log(osf); 

