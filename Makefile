CXX=hare
SRC=src/*.ha
BUILD=build

build: src/main.ha
	$(CXX) build -lm -lraylib -o $(BUILD)/a.out $(SRC)

run: build
	./$(BUILD)/a.out

.PHONY: run build
