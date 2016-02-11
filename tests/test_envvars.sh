. "$(dirname $0)/setup.sh"
export BASHRCD_DIR="$(dirname $0)/fixture_00"

assert "echo $HELLO" ""

. $BASHRCD_SCRIPT

assert "echo $HELLO" "hello"
