#!/bin/bash

select option in "ls" "ls -a" "Exit"; do
    while true; do
        case $REPLY in
            1)
                ls
                break
                ;;
            2)
                ls -a
                break
                ;;
            3)
                echo "Exiting..."
                exit 0
                ;;
            *)
                echo "Invalid option. Please try again."
                break
                ;;
        esac
    done
done
