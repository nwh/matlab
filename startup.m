function startup
% STARTUP Matlab startup script

% add src directory to path
addpath('~/matlab/src');

% add cvx to path
if isdir('~/matlab/toolbox/cvx')
  run('~/matlab/toolbox/cvx/cvx_startup.m');
end

% add jsonlab to path
if isdir('~/matlab/toolbox/jsonlab')
  addpath('~/matlab/toolbox/jsonlab');
end

end