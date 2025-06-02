.PHONY: install remove update

install:
	@echo "--- Installing burn ---"
	@sudo cp ./data/burn /bin
	@echo "Copied ./data/burn to /bin/"
	@sudo chmod +x /bin/burn
	@echo "Applied +x permissions to /bin/burn"
	@echo "Done! Run 'burn -h' to seek help for burn."

remove:
	@echo "--- Removing burn ---"
	@sudo rm -f /bin/burn
	@echo "Removed /bin/burn"
	@echo "Done!"

update:
	@echo "--- Updating burn ---"
	@sudo rm -f /bin/burn
	@echo "Removed /bin/burn"
	@sudo cp ./data/burn /bin
	@echo "Copied ./data/burn to /bin/"
	@sudo chmod +x /bin/burn
	@echo "Applied +x permissions to /bin/burn"
	@echo "Done! Run 'burn -h' to seek help for burn."
