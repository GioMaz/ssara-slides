BUILD_DIR=build
MAIN=main

$(BUILD_DIR)/main.pdf:
	mkdir -p $(BUILD_DIR)
	pdflatex -interaction=nonstopmode -output-directory=$(BUILD_DIR) $(MAIN)
	pdftk $(BUILD_DIR)/main.pdf cat 22 output $(BUILD_DIR)/contr1.pdf
	pdftk $(BUILD_DIR)/main.pdf cat 24 output $(BUILD_DIR)/contr2.pdf
	pdftk $(BUILD_DIR)/main.pdf cat 28 output $(BUILD_DIR)/contr3.pdf
	pdftk $(BUILD_DIR)/main.pdf cat 37 output $(BUILD_DIR)/contr4.pdf
	pdftk $(BUILD_DIR)/main.pdf cat 38 output $(BUILD_DIR)/contr5.pdf
	pdflatex -interaction=nonstopmode -output-directory=$(BUILD_DIR) $(MAIN)

clean:
	rm -r $(BUILD_DIR)
