.DEFAULT_GOAL := help

install:
	@exec bin/install_deps.sh
lint:
	@exec bin/linter.sh
run:
	@exec bin/start.sh
help:
	@printf 'USAGE:\n'
	@printf '\tinstall\t\tInstall dependencies\n'
	@printf '\tlint\t\tValidate syntaxis\n'
	@printf '\trun\t\tStart aplication\n'
	@printf '\thelp\t\tShow this text\n'
.DEFAULT:
	@echo 'Invalid option.'
	@make -s help
