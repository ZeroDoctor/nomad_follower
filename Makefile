
.PHONY: clean
clean:
	rm -rf ./bin

.PHONY: build
build:
	mkdir -p ./bin
	go build -o ./bin/nomad_follower .

.PHONY: run
run:
	VERBOSE=10 \
	LOG_FILE=nomad-logs.log \
	LOG_TAG=logging=true \
	NOMAD_ADDR=http://nomad-client.service.consul:4646 \
	./bin/nomad_follower
