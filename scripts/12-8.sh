#!/bin/bash

[[ $# -ne 1 ]] && { echo "Usage: $0 <month>"; exit 1; }

case $1 in
    1)
        echo "JANUARY"
        ;;
    2)
        echo "FEBRUARY"
        ;;
    3)
        echo "MARCH"
        ;;
    4)
        echo "APRIL"
        ;;
    5)
        echo "MAY"
        ;;
    6)
        echo "JUNE"
        ;;
    7)
        echo "JULY"
        ;;
    8)
        echo "AUGUST"
        ;;
    9)
        echo "SEPTEMBER"
        ;;
    10)
        echo "OCTOBER"
        ;;
    11)
        echo "NOVEMBER"
        ;;
    12)
        echo "DECEMBER"
        ;;
    *)
        echo "INVALID MONTH"
        exit 1
        ;;
esac

exit 0