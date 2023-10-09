#!/bin/bash

case "$1" in
  update)
    ./fukigen/bin/update.sh
    ;;
  setup)
    ./fukigen/bin/setup.sh
    ;;
  payment)
    ./fukigen/bin/payment.sh
    ;;
  *)
    echo "❌ Usage: $0 {setup|update|payment}"
    exit 1
esac

exit 0
