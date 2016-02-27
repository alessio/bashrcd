. "$(dirname $0)/setup.sh"

assert "echo $HELLO" ""

. $BASHRCD_SCRIPT -d "$(dirname $0)/fixture_00"

assert "echo $HELLO" "hello"
