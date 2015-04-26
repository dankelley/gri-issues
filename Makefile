## Some issues need no tests, so the directory sequence has gaps.
## Copy Makefiles from Makefile.skeleton

# TEST SETS
# 'make all' tests everything
# 'make current' tests the top-priority item
dirs        =8 9
current     =9

all:
	for dir in $(dirs) ; do cd $$dir ; make ; cd .. ; done
clean:
	-rm *~
	for dir in $(dirs) ; do cd $$dir ; make clean ; cd .. ; done
current:
	for dir in $(current) ; do cd $$dir ; make clean ; make ; make view ; cd .. ; done
