function Hfd = hess_fd(grad,x,h)
% HESS_FD compute forward difference Hessian

x = x(:);
g = grad(x);
n = length(x);
Hfd = zeros(n,n);

for i = 1:n
  ei = zeros(n,1);
  ei(i) = 1;
  gd = grad(x + ei*h);
  Hfd(:,i) = (gd - g) / h;
end

% make symmetric
Hfd = (Hfd + Hfd') / 2;

end
