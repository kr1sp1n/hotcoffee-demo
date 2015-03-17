.PHONY: test

MODULE_DIR = ./node_modules
NODE_DEV_BIN = $(BIN_DIR)/node-dev

install:
	npm install

clean:
	rm -rf ./node_modules

dev-start:
	$(NODE_DEV_BIN) index.coffee
