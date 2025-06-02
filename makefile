.PHONY: install remove update

install:
	@echo "--- Installing burn ---"
	cp ./data/burn /bin
	echo "Copied ./data/burn to /bin/"
	chmod +x /bin/burn
	echo "Applied +x permissions to /bin/burn"
	echo "Done! Run 'burn -h' to seek help for burn."

remove:
	@echo "--- Removing burn ---"
	@if [ "$$EUID" -ne 0 ]; then \
		echo "This command requires sudo. Re-running with sudo..."; \
		exec sudo $(MAKE) $@; \
	fi
	rm -f /bin/burn
	echo "Removed /bin/burn"
	echo "Done!"

update:
	@echo "--- Updating burn ---"
	rm -f /bin/burn
	echo "Removed /bin/burn"
	cp ./data/burn /bin
	echo "Copied ./data/burn to /bin/"
	chmod +x /bin/burn
	echo "Applied +x permissions to /bin/burn"
	echo "Done! Run 'burn -h' to seek help for burn."
