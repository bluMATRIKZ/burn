.PHONY: all remove

all:
	sudo cp ./data/burn /bin
	sudo chmod +x /bin/burn
	@echo "Done!"
	burn -h
remove:
	sudo rm -f /bin/burn
	@echo "Done!"
