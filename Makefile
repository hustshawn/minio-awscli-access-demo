start: init compose-up

init: 
	@echo "Creating the temp ./data directory"
	mkdir -p data

compose-up:
	docker-compose up

aws-init:
	aws configure set default.s3.signature_version s3v4

down:
	docker-compose down

.PHONY: clean
clean: down
	-@rm -rf ./data
	