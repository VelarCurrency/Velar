SRC_DIR := src
BUILD_DIR := build
BIN := VelarCurrency
FPC := fpc

UNITS := copyright commands
MAIN := main.pas

# Compile all units to build dir
$(BUILD_DIR)/%.o: $(SRC_DIR)/%.pas | $(BUILD_DIR)
	$(FPC)  -o$@ -FU$(BUILD_DIR) $<

# Compile main and link executable to build dir
$(BUILD_DIR)/$(BIN): $(patsubst %, $(BUILD_DIR)/%.o, $(UNITS)) $(SRC_DIR)/$(MAIN) | $(BUILD_DIR)
	$(FPC) -FE$(BUILD_DIR) -FU$(BUILD_DIR) -o$@ $(SRC_DIR)/$(MAIN)

# Create build dir if it doesn't exist
$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

all: $(BUILD_DIR)/$(BIN)

clean:
	rm -rf $(BUILD_DIR)
	rm -f $(SRC_DIR)/*.o $(SRC_DIR)/*.ppu
	rm -f $(SRC_DIR)/*.bak $(SRC_DIR)/*.res
