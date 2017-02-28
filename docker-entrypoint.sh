#!/bin/sh
set -ex

if [ ! -f $BEANCOUNT_INPUT_FILE ]; then
	mkdir -p $(dirname $BEANCOUNT_INPUT_FILE)
	cat > $BEANCOUNT_INPUT_FILE <<-EOF
		* Options
		option "title" "${BEANCOUNT_TITLE:-Untitled}"
		option "operating_currency" "${BEANCOUNT_CURRENCY:-USD}"
	EOF
fi

exec "$@"
