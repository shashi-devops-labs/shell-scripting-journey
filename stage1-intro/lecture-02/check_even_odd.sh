#1/bin/bash

echo "Number is Even: $([ $((num % 2)) -eq 0 ] && echo true || echo false)"

