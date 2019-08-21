SSH_OPTION=-i .vagrant/machines/rsync-sunabako/virtualbox/private_key -o 'UserKnownHostsFile=/dev/null' -o 'StrictHostKeyChecking=no'

provision:
	vagrant provision

setup:
	rm -rf tmp/
	rm -rf empty/
	mkdir -p tmp/
	mkdir -p empty/
	python3 -c 'for i in range(0,50000):print("%i,HelloWorld" % i)' > tmp/awesome.txt
	python3 -c 'for i in range(0,50000):print("%i,HelloWorld" % i)' > tmp/brilliant.txt
	python3 -c 'for i in range(0,50000):print("%i,HelloWorld" % i)' > tmp/cool.txt
	python3 -c 'for i in range(0,50000):print("%i,HelloWorld" % i)' > tmp/delicious.txt
	python3 -c 'for i in range(0,50000):print("%i,HelloWorld" % i)' > tmp/elegant.txt

rsync: setup
	rsync -avhz -e "ssh ${SSH_OPTION}" ./tmp vagrant@192.168.33.21:/home/vagrant/abc

clear:
	rm -rf empty/
	mkdir -p empty/
	rsync -avhz --delete -e "ssh ${SSH_OPTION}" ./empty/ vagrant@192.168.33.21:/home/vagrant/abc
