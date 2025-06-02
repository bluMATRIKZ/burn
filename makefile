.PHONY: all remove update

all:
	sudo cp ./data/burn /bin
	sudo chmod +x /bin/burn
	@echo "Done!"
        burn -h
remove:
	sudo rm -f /bin/burn
	@echo "Done!"

update:
	sudo rm -f /bin/burn
	sudo cp ./data/burn /bin
	sudo chmod +x /bin/burn
	@echo "Done!"
        burn -h
