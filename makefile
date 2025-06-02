.PHONY: install remove update

install:
	sudo cp ./data/burn /bin
	sudo chmod +x /bin/burn
	@echo "Done! Run 'burn -h' to seek help for burn."

remove:
	sudo rm -f /bin/burn
	@echo "Done!"

update:
	sudo rm -f /bin/burn
	sudo cp ./data/burn /bin
	sudo chmod +x /bin/burn
	@echo "Done! Run 'burn -h' to seek help for burn."
