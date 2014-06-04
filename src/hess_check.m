function [flag H Hfd Herr] = hess_check(grad,hess,x,h)
% HESS_CHECK check Hessian against forward finite difference
H = hess(x);
Hfd = hess_fd(grad,x,h);
Hv = H(:);
Hfdv = Hfd(:);
Herr = norm(Hv-Hfdv,inf) / (norm(Hv,inf) + 1);
flag = Herr <= 10*h;
end