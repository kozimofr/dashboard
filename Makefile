tag:
	git tag -a v$(version) -m "Version $(version)"

deploy:
	sudo docker-compose -f production.yml build
	sudo docker-compose -f production.yml rm -s -f
	sudo docker-compose -f production.yml up -d
