# Intended for use on Linux machines.

# Local installation
install:
	@go build -ldflags "-s -w" -o mashell ./cmd/ma-shell/
	@install -Dm755 mashell $(DESTDIR)/usr/local/bin/mashell
	@echo "Installed ma-shell."

uninstall:
	@rm -rf $(DESTDIR)/usr/local/bin/mashell
	@echo "Uninstalled ma-shell."

register:
	@echo "$(DESTDIR)/usr/local/bin/mashell" | tee -a /etc/shells > /dev/null
	@echo "Registered ma-shell as a shell."


# Remove the binary
clean:
	@rm -f ma-shell
	@echo "Cleaned the local ma-shell binary."



# Installation & uninstallation for package managers only
global_install:
	@go build -ldflags "-s -w" -o mashell
	@install -Dm755 mashell $(DESTDIR)/usr/bin/mashell

global_uninstall:
	@rm -rf $(DESTDIR)/usr/bin/mashell
