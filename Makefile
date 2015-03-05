# Mainly because I can't be bothered typing python setup blah
compiler = python
build:
	$(compiler) setup.py version
	$(compiler) setup.py build
	$(compiler) setup.py test
install:
	cat files.txt | xargs rm -rf
	$(compiler) setup.py version
	$(compiler) setup.py install --record files.txt
	$(compiler) setup.py test
clean:
	$(compiler) setup.py clean 
	cat files.txt | xargs rm -rf
	
