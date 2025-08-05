SRC_DIR := src
BUILD_DIR := build
BIN := VelarCurrency
FPC := fpc

# List all unit files (not main program)
UNITS := $(SRC_DIR)/copyright.pas
MAIN := $(SRC_DIR)/main.pas

all: $(BUILD_DIR)/$(BIN)

# Ensure build directory exists
$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

# Compile units first (no linking)
$(SRC_DIR)/copyright.o: $(SRC_DIR)/copyright.pas | $(BUILD_DIR)
	$(FPC) $<

# Compile main and link, output executable to build dir
$(BUILD_DIR)/$(BIN): $(UNITS:.pas=.o) $(MAIN) | $(BUILD_DIR)
	$(FPC) -o$@ $(MAIN)

clean:
	rm -f $(BUILD_DIR)/$(BIN) $(SRC_DIR)/*.o $(SRC_DIR)/*.ppu
	rm -f $(SRC_DIR)/*.bak $(SRC_DIR)/*.res
	rm -rf $(BUILD_DIR)
