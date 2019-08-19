setup:
	rm -rf tmp/
	mkdir -p tmp/
	python3 -c 'for i in range(0,50000):print("%i,HelloWorld" % i)' > tmp/awesome.txt
	python3 -c 'for i in range(0,50000):print("%i,HelloWorld" % i)' > tmp/brilliant.txt
	python3 -c 'for i in range(0,50000):print("%i,HelloWorld" % i)' > tmp/cool.txt
	python3 -c 'for i in range(0,50000):print("%i,HelloWorld" % i)' > tmp/delicious.txt
	python3 -c 'for i in range(0,50000):print("%i,HelloWorld" % i)' > tmp/elegant.txt
