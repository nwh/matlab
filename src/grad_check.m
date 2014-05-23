function [flag g gfd gerr] = grad_check(func,grad,x,h)
% GRAD_CHECK check gradient against forward finite difference
g = grad(x);
gfd = grad_fd(func,x,h);
gerr = norm(g-gfd,inf) / (norm(g,inf) + 1);
flag = gerr <= 10*h;
end