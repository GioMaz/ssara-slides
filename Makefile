BUILD_DIR=build
MAIN=main

$(BUILD_DIR)/main.pdf:
	mkdir -p $(BUILD_DIR)
	pdflatex -interaction=nonstopmode -output-directory=$(BUILD_DIR) $(MAIN)
	pdftk $(BUILD_DIR)/main.pdf cat 23 output $(BUILD_DIR)/contr1.pdf
	pdftk $(BUILD_DIR)/main.pdf cat 25 output $(BUILD_DIR)/contr2.pdf
	pdftk $(BUILD_DIR)/main.pdf cat 29 output $(BUILD_DIR)/contr3.pdf
	pdftk $(BUILD_DIR)/main.pdf cat 38 output $(BUILD_DIR)/contr4.pdf
	pdftk $(BUILD_DIR)/main.pdf cat 39 output $(BUILD_DIR)/contr5.pdf
	pdflatex -interaction=nonstopmode -output-directory=$(BUILD_DIR) $(MAIN)

clean:
	rm -r $(BUILD_DIR)
