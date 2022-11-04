# This way everything works as expected ever for
# `make -C /path/to/project` or
# `make -f /path/to/project/Makefile`.
MAKEFILE_PATH := $(abspath $(lastword $(MAKEFILE_LIST)))
PROJECT_DIR := $(patsubst %/,%,$(dir $(MAKEFILE_PATH)))

RULES_DIR=${PROJECT_DIR}/rules

.PHONY: check
check:
	@semgrep --validate --strict --config=${RULES_DIR} ${RULES_DIR}

.PHONY: test
test:
	@semgrep --test --strict ${RULES_DIR}
