function [A] = specialMatrix(n,m)
% This function should return a matrix A as described in the problem statement
% Inputs n is the number of rows, and m the number of columns
nargin('specialMatrix')
if nargin < 2
    error('?????????')
end
% It is recomended to first create the matrxix A of the correct size, filling it with zeros to start with is not a bad choice
A = zeros(n,m);

% Now the real challenge is to fill in the correct values of A
for a=1:n
    for b=1:m
        if a==1
            %first row
            A(a,b)=b;
        else if b==1
            %first column
            A(a,b)=a;
        else
            %elements
            A(a,b)=A(a-1,b) + A(a,b-1)
        end
        end
    end

end
