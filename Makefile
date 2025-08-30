BUILD_DIR=build
MAIN=main

all:
	mkdir -p $(BUILD_DIR)
	pdflatex -interaction=nonstopmode -output-directory=$(BUILD_DIR) $(MAIN)
	# biber $(BUILD_DIR)/$(MAIN)
	# pdflatex -interaction=nonstopmode -output-directory=$(BUILD_DIR) $(MAIN)
	# pdflatex -interaction=nonstopmode -output-directory=$(BUILD_DIR) $(MAIN)

clean:
	rm -r $(BUILD_DIR)
