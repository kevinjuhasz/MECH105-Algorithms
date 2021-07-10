a=0;
b=90;
error=1;
ite=0;
if (f(a)*f(b)<0)
    while (error > (10^(-6)))
        c=(a+b)/2;
        if (f(b)*f(c)<0)
            a=c;
        else
            b=c;
        end
        error = abs(f(c));
        angle = c;
        ite = ite+1;
    end
else
    fprintf('root doesnt make sense');
end
fprintf('Using the bisection method \nangle is: \t%f\nconverged at iterations of \t%f \n', angle, ite)
fprintf('with an error of \t%f \nand function at root is \t%f\n',f(c),f(angle))
