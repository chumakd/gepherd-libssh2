help:
	@make -qpRr | grep -Ee '^[a-z].*:$$' | sed -e 's~:~~g' | sort

.PHONY: src-update
src-update:
	git subtree pull -P src https://github.com/libssh2/libssh2.git master

.PHONY: update
update:
	git fetch https://github.com/allyourcodebase/libssh2.git
