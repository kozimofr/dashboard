tag:
	git tag -a v$(version) -m "Version $(version)"

deploy:
	docker-compose -f production.yml build
	docker-compose -f production.yml rm -s -f
	docker-compose -f production.yml up -d
