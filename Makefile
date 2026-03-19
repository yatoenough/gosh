APP_NAME=gosh
TARGET_DIR=bin

default: run

build:
	@go build -o $(TARGET_DIR)/$(APP_NAME) cmd/app/main.go

clean:
	@rm -rf $(TARGET_DIR)

run: build
	@./$(TARGET_DIR)/$(APP_NAME)

.PHONY: default build clean run
