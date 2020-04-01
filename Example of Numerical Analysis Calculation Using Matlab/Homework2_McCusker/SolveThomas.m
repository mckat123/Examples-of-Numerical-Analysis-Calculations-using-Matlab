%%Tridiagonal Matrix 
%n = 4; 
%full(gallery('tridiag',n, -0.020875,2.01475,-0.020875)) Don't think I need
%this
%%
n=4; 
a= 2.01475*ones(n,1)
b= -0.020875*ones(n,1)
c= -0.020875*ones(n,1)
f= [4.175 0 0 2.0875]
t = tridiag(a,b,c,f)
A = diag(a,0)+ diag(-0.020875*ones(n-1, -1), -1) + diag(-0.20875*ones(n-1,1),1) 