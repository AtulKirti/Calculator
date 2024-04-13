#!/bin/bash
# Author: Atul Kirti

# Function to perform addition
add() {
  echo "Result: $(($1 + $2))"
}

# Function to perform subtraction
subtract() {
  echo "Result: $(($1 - $2))"
}

# Function to perform multiplication
multiply() {
  echo "Result: $(($1 * $2))"
}

# Function to perform division
divide() {
  if [ $2 -eq 0 ]; then
    echo "Error: Division by zero!"
  else
    echo "Result: $(($1 / $2))"
  fi
}

# Function to perform exponentiation
exponentiate() {
  echo "Result: $(($1 ** $2))"
}

# Function to find square root
square_root() {
  echo "Result: $(bc <<< "scale=2; sqrt($1)")"
}

# Function to find modulus
modulus() {
  echo "Result: $(($1 % $2))"
}

# Main script
echo "Advanced Calculator"
echo "Choose operation:"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
echo "5. Exponentiation"
echo "6. Square Root"
echo "7. Modulus"
read -p "Enter your choice (1/2/3/4/5/6/7): " choice

read -p "Enter first number: " num1
if [ $choice -ne 6 ]; then
  read -p "Enter second number: " num2
fi

case $choice in
  1) add $num1 $num2;;
  2) subtract $num1 $num2;;
  3) multiply $num1 $num2;;
  4) divide $num1 $num2;;
  5) exponentiate $num1 $num2;;
  6) square_root $num1;;
  7) modulus $num1 $num2;;
  *) echo "Invalid choice";;
esac
