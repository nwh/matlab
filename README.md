# Matlab Tools

This directory contains tools to automatically download and configure external
Matlab tools.

This directory should be downloaded to the home directory.

## External tools

* CVX: <http://cvxr.com/>
* JSONLab: <http://iso2mesh.sourceforge.net/cgi-bin/index.cgi?jsonlab>

## Included scripts

* `src/mypath.m`: Matlab's `path` command without Matlab toolboxes
* `src/grad_check.m`: tool to check analytic gradient with forward finite difference
* `src/grad_fd.m`: evaluate forward finite difference gradient
* `src/hess_check.m`: tool to check analytic Hessian with forward finite difference
* `src/hess_fd.m`: evaluate forward finite difference Hessian

## Download and Usage

From command line:

```
$ cd ~
$ git clone https://github.com/nwh/matlab.git
...
$ cd matlab
$ make
...
```
