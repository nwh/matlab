function gfd = grad_fd(func,x,h)
% GRAD_FD compute forward difference gradient

x = x(:);
n = length(x);
gfd = zeros(n,1);
f = func(x);

for i = 1:n
  ei = zeros(n,1);
  ei(i) = 1;
  gfd(i) = (func(x+ei*h) - f) / h;
end

end
