#!/bin/bash
# calculator script
# created by shyrra

addition () {
    echo $(($1 + $2))
}
substraction () {
    echo $(($1 - $2))
}
multiplication () {
    echo $(($1 * $2))
}

division () {
    if [ $2 -eq 0 ]; then
    echo "cannot divide by zero. please enter valid numbers"
    else
    echo $(($1 / $2))
    fi
}
exit () {
    exit 1
}
# main function
main () {
    
    while true; do
    echo "select operation"
    echo "1. addition"
    echo "2. substraction"
    echo "3. multiplication"
    echo "4. division"
    echo "5. exit"
    read -p "enter your choice: " choice
# switch case
case $choice in 
    1) read -p "enter first number: " num1
        read -p "enter second number: " num2
        addition $num1 $num2 ;;
    2) read -p "enter first number: " num1 
        read -p "enter second number: " num2
        substraction $num1 $num2 ;;
    3)  read -p "enter first number: " num1
        read -p "enter second number: " num2
        multiplication $num1 $num2 ;; 
    4) read -p "enter first number: " num1
        read -p "enter second number: " num2
        division $num1 $num2 ;;
    5) echo "exited successfully"
        exit ;;
        
    *) echo "invalid choice enter number between 1 and 5" ;;

    esac
    done
}
main