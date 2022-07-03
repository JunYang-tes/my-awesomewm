SRC=$(shell ls src/*.fnl src/*/*.fnl)

all: $(SRC)

$(SRC):
	mkdir -p $(subst src,lua,$(subst .,.,$(@D)))
	fennel --compile $@ > $(subst src,lua,$(subst .,.,$(@D)))/$(subst .fnl,,$(@F)).lua

.PHONY: $(SRC)