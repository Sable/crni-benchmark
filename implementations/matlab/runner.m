function runner(scale)
%%
%% Driver for the Crank-Nicholson solution to the
%% one-dimensional heat equation.
%%

%t1=clock;

a=2.5; % a=rand*3;
b=1.5; % b=1.5;
c=5; % c=2;
m=2300; %321; % n=floor(rand*1389);
n=2300; %321; % n=floor(rand*529);

tic();
for time=1:scale
  U=crnich(a, b, c, n, m);
end
elapsed = toc();

disp('{');
disp('"time":');
disp(elapsed);
disp(', "output":');
disp(fletcherSum(floor(U*10000)));
disp('}');

end

