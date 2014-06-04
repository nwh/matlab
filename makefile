
.PHONY: all
all: \
	toolbox/cvx/.made \
	toolbox/jsonlab/.made \
	$(HOME)/Documents/MATLAB/startup.m

## CVX

download/cvx-rd.zip:
	mkdir -p download
	wget -P download/ http://web.cvxr.com/cvx/cvx-rd.zip

toolbox/cvx/.made: download/cvx-rd.zip
	mkdir -p toolbox
	unzip	download/cvx-rd.zip -d toolbox
	matlab -nodisplay -r "cd toolbox/cvx; cvx_setup; exit"
	touch $@

## jsonlab

download/jsonlab-1.0beta.tar.gz:
	mkdir -p download
	wget \
		-P download/ \
		http://downloads.sourceforge.net/project/iso2mesh/jsonlab/0.9.9%20%28Optimus%20beta%29/jsonlab-1.0beta.tar.gz

toolbox/jsonlab/.made: download/jsonlab-1.0beta.tar.gz
	mkdir -p toolbox
	tar -xzvf download/jsonlab-1.0beta.tar.gz -C toolbox/
	touch $@

## create link for startup.m script

$(HOME)/Documents/MATLAB/startup.m:
	mkdir -p $(HOME)/Documents/MATLAB/
	ln -s $(PWD)/startup.m $@

## clean up

.PHONY: clean
clean:
	$(RM) -r toolbox

.PHONY: clean_download
clean_download:
	$(RM) -r download

## debugging
# print helper
print-%:
	@echo $* := $($*)
