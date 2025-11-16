#!/bin/bash
isPrime() {
    local n=$1

    if [ "$n" -le 1 ]; then
        return 1   
    fi

    if [ "$n" -eq 2 ]; then
        return 0   
    fi

    if [ $((n % 2)) -eq 0 ]; then
        return 1   
    fi

    local limit=$(echo "sqrt($n)" | bc)
    for ((i=3; i<=limit; i+=2)); do
        if [ $((n % i)) -eq 0 ]; then
            return 1   
        fi
    done

    return 0   
}

# Nhập số từ người dùng
read -p "Nhap so can kiem tra: " num

if isPrime "$num"; then
    echo "$num la so nguyen to."
else
    echo "$num khong phai so nguyen to."
fi
