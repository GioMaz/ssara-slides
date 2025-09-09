BUILD_DIR=build
MAIN=main

$(BUILD_DIR)/main.pdf:
	mkdir -p $(BUILD_DIR)
	pdflatex -interaction=nonstopmode -output-directory=$(BUILD_DIR) $(MAIN)
	pdfseparate -f 19 -l 19 $(BUILD_DIR)/main.pdf $(BUILD_DIR)/contr1.pdf
	pdfseparate -f 21 -l 21 $(BUILD_DIR)/main.pdf $(BUILD_DIR)/contr2.pdf
	pdfseparate -f 25 -l 25 $(BUILD_DIR)/main.pdf $(BUILD_DIR)/contr3.pdf
	pdfseparate -f 32 -l 32 $(BUILD_DIR)/main.pdf $(BUILD_DIR)/contr4.pdf
	pdfseparate -f 33 -l 33 $(BUILD_DIR)/main.pdf $(BUILD_DIR)/contr5.pdf
	pdflatex -interaction=nonstopmode -output-directory=$(BUILD_DIR) $(MAIN)

# $(BUILD_DIR)/main.pdf:
# 	mkdir -p $(BUILD_DIR)
# 	pdflatex -interaction=nonstopmode -output-directory=$(BUILD_DIR) $(MAIN)
# 	pdftk $(BUILD_DIR)/main.pdf cat 19 output $(BUILD_DIR)/contr1.pdf
# 	pdftk $(BUILD_DIR)/main.pdf cat 21 output $(BUILD_DIR)/contr2.pdf
# 	pdftk $(BUILD_DIR)/main.pdf cat 25 output $(BUILD_DIR)/contr3.pdf
# 	pdftk $(BUILD_DIR)/main.pdf cat 32 output $(BUILD_DIR)/contr4.pdf
# 	pdftk $(BUILD_DIR)/main.pdf cat 33 output $(BUILD_DIR)/contr5.pdf
# 	pdflatex -interaction=nonstopmode -output-directory=$(BUILD_DIR) $(MAIN)

clean:
	rm -r $(BUILD_DIR)
